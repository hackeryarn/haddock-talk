module Intro
  (
    -- * Key Features
    -- $keyfeatures

    -- * Integration
    -- $integration

    -- * Hoogle
    -- $hoogle

    -- * Minimal shell.nix
    -- $minimalshellnix

    -- * Generating Docs
    -- $generatingdocs
  )
where

-- $keyfeatures
-- - Light weight format
-- - Automatic hyperlinking
-- - Documentation lives with your code
-- - Understands Haskell
-- - Only exports exposed documentation

-- $integration
-- - Integrates with ~cabal~, ~stack~, and ~hoogle~
-- - We will focus on ~cabal~ and ~hoogle~ integration
-- - Most of the points also apply to ~stack~

-- $hoogle
-- - Provides search for all haskell documentation
-- - Integrates with your project
-- - Index all of Stackage: ~hoogle generate~

-- $minimalshellnix
-- @
-- { pkgs ? import \<nixpkgs> { } }:
--
-- mkShell {
--   buildInputs = with pkgs; [
--     ghc
--     cabal-install
--     haskellPackages.hoogle
--   ];
-- }
-- @

-- $generatingdocs
-- - Generate Haddock:
--
--     > cabal haddock --haddock-hoogle --haddock-html
--
--     - @--haddock-hoogle@ generates a @.txt@ file read by Hoogle
--     - @--haddock-html@ generates the web content
--
-- - Update Hoogle:
--
--     > hoogle generate --local=dist-newstyle/
--
--     - You have to specify the local dist directory to properly link documentation
--
-- - Start Hoogle server:
--
--     > hoogle server -p 1337 --local
--
--     - @--local@ provides links directly to documentation files in the project
