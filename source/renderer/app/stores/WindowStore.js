// @flow
import { ipcRenderer } from 'electron';
import Store from './lib/Store';
import environment from '../../../common/environment';

export default class WindowStore extends Store {

  setup() {
    this.actions.window.resizeWindow.listen(this._resizeWindow);
    this.actions.window.closeWindow.listen(this.closeWindow);
  }

  closeWindow = () => ipcRenderer.send('close-window');

  // PRIVATE

  _resizeWindow = ({ width, height }: { width: number, height: number }) => {
    ipcRenderer.send('resize-window', { width, height, animate: !environment.isTest() });
  };

}
