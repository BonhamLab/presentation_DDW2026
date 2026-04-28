#import "@preview/touying:0.7.3": *
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
      The Childhood Microbiome #h(5em)
      #box(baseline:1em, [
        #image("assets/general/lab-logo-banner.png", width: 8em)
      ])
    ],
    subtitle: [What it's doing and why you should care],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2026, month: 5, day: 2),
    institution: [DDW 2026],
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

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-1.png", width: 650pt)])
    content((-9,-6), text(14pt)[@taoEvolutionaryGlycomicsCharacterization2011])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-2.png", width: 650pt)])

    content((0, 0), [#image("assets/binfantis/evo-breastmilk-3.png", width: 650pt)])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-4.png", width: 650pt)])
    (pause,)
    content((7, -1), [#image("assets/binfantis/evo-breastmilk-5.2.png", width: 120pt)])
    content((2, -1), [#image("assets/binfantis/evo-breastmilk-6.2.png", width: 180pt)])
    (pause,)
    content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
        Humans can't digest HMOs!
      ]), angle:20deg)
    }))
]

== The gut microbiome has widespread effects on human health

#slide[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/microbiome-effects.jpg", width: 620pt)])
    content((-9,-7), text(14pt)[@ronanChildhoodDevelopmentMicrobiome2021])
    // (pause,)
    // circle((-4.8,4), radius:(80pt,70pt), stroke:3pt + red)
    }))
]

== The infant microbiome changes rapidly over the first years of life




#contact_info_slide

#thank-you-slide(slidesurl: "https://github.com/BonhamLab/presentation_DDW2026")

== Bibliography

#bibliography("refs.bib", title: none, style: "chicago-author-date")

