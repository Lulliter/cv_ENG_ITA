---
---
---

# Purpose

In this this R project I my CV/resume following Mitchell O'Hara-Wild's [R package `vitae`](https://github.com/mitchelloharawild/vitae) ("awwsome"" template define in LATEX in `awesome-cv.cls` )

I have 4 versions:

-   Long, in Italian
-   Long, in English
-   Short, in Italian
-   Short, in English

## NOTES

-   :white_check_mark: A major "gotcha" was the possibility to insert Publications & Talks exploiting my **Zotero** collections in the `....bib` format that can be entered directly via the function `vitae::bibliography_entries`.
    -   (\*) when exporting from Zotero better to select BetterBibLaTeX
-   :white_check_mark: Most other information is saved in `./data/*.csv`which get loaded via `data/cv_data_ENG_ITA.R`, except for **Comepetences** (Personal, Software, Language) which are defined in `*.Rmd` files
    -   :warning: see notes in the `.Rmd` files on how to deal with `csv -> latex` formatting nightmare (
    -   :ballot_box_with_check: fixing `.*csv` files directly from Excel or R will have different implications on `""` rendering via latex

## TO DOs

-   :ballot_box_with_check: revise and write instructions to be consistent adding rows to `.*csv` files in terms of quotes/links etc

-   :question: Current version of `vitae` does not print footer anymore

-   :question: `apa6-cv.csl` seems OK except hyperlink exceed page width.... must check other formattings

## Acknowledgements

-   **Mitchell O'Hara-Wild** R package `vitae`, along with:
    -   Youtube video by **Bryan Jenks** on `vitae` [Free Code Camp Talk: Making A Data Driven CV With RMarkdown](https://www.youtube.com/watch?v=cMlRAiQUdD8&t=113s)
    -   Some variations on the above seen in **Lorena Abad Crespo**'s version shared [here](https://github.com/loreabad6/R-CV). To make this version, I had to modify teh `awesome-cv.cls` file

``` css
      % Add fontawesome5 package 
      \RequirePackage{fontawesome5}
      \RequirePackage[default,opentype]{sourcesanspro}
```

-   Future attempt could be this [Github action to develop resume!](https://github.com/rahulrai-in/csf-resume-ops/blob/5b12e8adc82a96e738f4ea1a89a180006234c2f8/README.md)
