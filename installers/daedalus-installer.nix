{ mkDerivation, aeson, base, bytestring, containers, dhall
, dhall-json, directory, filepath, github, Glob, lens-aeson
, megaparsec, microlens, network-uri, nsis, optional-args
, optparse-applicative, split, stdenv, system-filepath, temporary
, text, turtle, universum, wreq, yaml, zip-archive
}:
mkDerivation {
  pname = "daedalus-installer";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring containers dhall dhall-json directory github
    Glob lens-aeson megaparsec microlens network-uri nsis optional-args
    system-filepath text turtle universum wreq yaml zip-archive
  ];
  executableHaskellDepends = [
    aeson base bytestring containers dhall dhall-json directory
    filepath megaparsec optional-args optparse-applicative split
    system-filepath temporary text turtle universum yaml
  ];
  description = "Daedalus Installer Builder";
  license = stdenv.lib.licenses.mit;
}
