#import "@preview/touying:0.6.1": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"
#import "assets/general/slides.typ": thank-you-slide, contact_info_slide

#let cetz-canvas = touying-reducer.with(
  reduce: cetz.canvas,
  cover: cetz.draw.hide.with(bounds: true)
)

#set text(font:"Liberation Sans")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [
      TITLE #h(6em)
      #box(baseline:1em, [
        #image("assets/general/lab-logo-banner.png", width: 8em)
      ])
    ],
    subtitle: [SUBTITLE],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2025, month: 1, day: 1),
    institution: [SOME SEMINAR SERIES],
  ),
  config-colors(
    primary: rgb("#3172AE"),
    primary-light: rgb("#d6c6b7"),
    secondary: rgb("#23373b"),
    neutral-lightest: rgb("#ffffff"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#23373b"),
  ),
)

#title-slide()

== Outline

#slide[
  #set text(24pt)
  - Thing 1
  - Thing 2
]

= Section

== Slide title

Some content

#contact_info_slide

#thank-you-slide(slidesurl: "https://github.com/BonhamLab/template_presentation")
