# beamer_tima

I designed this template for my PhD defense with the following features
:

  - Color theme matching the TIMA logo colors. Integration of TIMA
    logo.
  - The presentation structure defines the frame titles.
  - Progression in the presentation explicited at global level
    (slide numbering), section level (section names) and subsection
    level (progress bar per section).
  - Fast navigation through slides.

## Contents

  - `top.pdf` : Example presentation with additional infos.
  - `top.tex` : Source for the example presentation.
  - `template/mybeamer.cls` : Class definition (sets the themes).
  - `template/beamerouterthemesmalltree.sty` : Outer theme definition (nav bars and frame title).
  - `template/beamercolorthemehog.sty` : Color theme to match TIMA logo colors.
  - `.latexmkrc` : configuration file for [latexmk](http://personal.psu.edu/jcc8//software/latexmk-jcc/)

## Required packages

  - beamer (obviously)
    - beamerouterthemeshadow
    - beamerinnerthemerounded
  - tikz (for drawing the frame counter)

## Recommended packages

  - xspace : Gracious handling of spaces after macro expansion
  - booktabs : Enhancement of the array environment
  - siunitx : handling of SI units (`\sisetup{detect-all, output-decimal-marker={,}}`)
  - tikz-timing : drawing waveforme (Try tikztiming libraries either, overlays and beamer)

