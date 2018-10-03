{ mkDerivation, aeson, aeson-pretty, base, bytestring, dhall
, fetchgit, insert-ordered-containers, optparse-applicative, stdenv
, tasty, tasty-hunit, text, unordered-containers, yaml
}:
mkDerivation {
  pname = "dhall-json";
  version = "1.2.3";
  src = fetchgit {
    url = "https://github.com/dhall-lang/dhall-json";
    sha256 = "0yz6hlk94k2jn794397r73q8xb9yqp4zbzl30mx336ph7xdfg3sh";
    rev = "51a1fdae69724bbce158dcd44156da0de16f708f";
  };
  doCheck = false;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base dhall insert-ordered-containers optparse-applicative
    text unordered-containers
  ];
  executableHaskellDepends = [
    aeson aeson-pretty base bytestring dhall optparse-applicative text
    yaml
  ];
  testHaskellDepends = [ aeson base dhall tasty tasty-hunit text ];
  description = "Compile Dhall to JSON or YAML";
  license = stdenv.lib.licenses.bsd3;
}
