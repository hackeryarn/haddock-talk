module Markup
  (
  -- * Code Blocks
  -- $codeblocks

  -- * Hyperlinks
  -- $hyperlinks

  -- * Formatting
  -- $formatting

  -- * Special Elements
  -- $specialelements
  )
where

-- $codeblocks
-- To interpret code litteraly:
--
-- > Prefixed the line with a __\>__
--
-- To allow Haddock markup in your code:
--
-- @
-- Surrounded by __\@__ on new lines
-- @
--
-- To show shell interaction:
--
-- >>> Prefix the input with __>>>__
-- And just add the output on a new line

-- $hyperlinks
-- Link to identifiers by using either __\'...'__ or __\`...`__.
--
-- Link to modules by using __\"..."__.
--
-- @
-- A link to 'IO' identifier a link to "Data.List" module.
-- /Only links to modules in scope./
--
-- For infix identifiers in prefix form use a code block @('++')@.
-- @
--
-- Link to a urls using __\<https://...>__.
--
-- Create a link with __\[link text](https://...)__.
--
-- @
-- A [link](https://hackeryarn.com) to my website <https://hackeryarn.com>.
-- @
--
-- Create anchors with a __\#...#__.
--
-- Link to anchors with __\"module#anchor"__.
--
-- "Data.ListWithBasicComments#mapL"

-- $formatting
--
-- Emphasize text with __\/.../__.
--
-- /Emphasized/
--
-- Bold text with __\__...\____.
--
-- Created bulleted lists with:
--
-- * __*__
-- - __-__
--
-- Create enumerated lists with:
--
-- (1) __(1)__
-- 2. __2.__
--
-- [@Create definitions@]: using __[@...@]: description__.

-- $specialelements
-- Include images with Markdown syntax __\![image descripton](pathtoimage.png)__.
--
-- Define LaTeX expressions with __\\[...\\]__ or inline with __\\(...\\)__.
-- This uses javascript to render LaTeX via [MathJax](https://www.mathjax.org/).
--
-- Create tables with ASCII art.
--
-- +---------------+---------+
-- | A small table | Example |
-- +===============+=========+
-- |Displays       | Exactly |
-- |things         |         |
-- +---------------+---------+
-- | As you would expect     |
-- +-------------------------+
--
-- Include version tags for items using __\@since ...__.
--
-- @since 0.1.0.0
