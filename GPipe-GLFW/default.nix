{ mkDerivation, base, exception-transformers, GLFW-b, GPipe, stdenv
, transformers
}:
mkDerivation {
  pname = "GPipe-GLFW";
  version = "1.2.3";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base GLFW-b GPipe transformers ];
  executableHaskellDepends = [
    base exception-transformers GPipe transformers
  ];
  homepage = "https://github.com/plredmond/GPipe-GLFW";
  description = "GLFW OpenGL context creation for GPipe";
  license = stdenv.lib.licenses.mit;
}