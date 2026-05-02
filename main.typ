#import "@preview/touying:0.7.3": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"
#import "@preview/tiaoma:0.3.0"
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
      The Early Life Microbiome #h(5em)
      #box(baseline:0.5em, [
        #image("assets/general/Tufts_Medical_Center_logo.jpg", width: 8em)
      ])
    ],
    subtitle: [Brains, immunity, and evolution #h(11em)
      #box(tiaoma.qrcode("https://github.com/BonhamLab/presentation_DDW2026"), baseline: 0.9em)
    ],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2026, month: 5, day: 2),
    institution: [DDW 2026 | bonamlab.bio],
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
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-2.png", width: 650pt)])

    content((0, 0), [#image("assets/binfantis/evo-breastmilk-3.png", width: 650pt)])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-4.png", width: 650pt)])
    (pause,)
    content((7, -1), [#image("assets/binfantis/evo-breastmilk-5.2.png", width: 120pt)])
    content((2, -1), [#image("assets/binfantis/evo-breastmilk-6.2.png", width: 180pt)])
    content((-9,-6), text(14pt)[@taoEvolutionaryGlycomicsCharacterization2011])
    (pause,)
    content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
        Humans can't digest HMOs!
      ]), angle:20deg)
    }))
]

== Outline

- Background - The early life microbiome is a dynamic ecosystem#pause
- Studying it _as a dynamic system_ is hard#pause
- Co-development of the gut microbiome and visual neural cirtuitry
- Future directions

== The gut microbiome has widespread effects on human health

#slide(repeat: 3, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/microbiome-effects.jpg", width: 620pt)])
    content((-11,-7), text(14pt)[@ronanChildhoodDevelopmentMicrobiome2021])
    only(1, rect((-11.3,-1.3), (0,6.4), fill:white, stroke: none))
    only(1, rect((1.6,-6.3), (12,-1.4), fill:white, stroke: none))
    only(3, content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
          #set align(center)
        All of these systems are shaped#linebreak() in early development
      ])))
  })
])

== The infant microbiome changes rapidly over the first years of life

#slide(repeat: 2, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/yassour-timecourse.png", width: 750pt)])
    only(1, rect((-0.3,-5.6), (14,5.4), fill:white, stroke: none))
    content((-10,-6), text(14pt)[@yassourNaturalHistoryInfant2016])
  })
])

== Infant microbiome succession follows similar patterns around the globe

#slide[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig1a.png", width: 450pt)])
    content((-5,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((12,1), text(14pt)[Guilherme])
    content((12,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    rect((-14,-5.6), (-11,2), fill:white, stroke: none)

    }))
]

#slide(repeat: 2, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig1de.png", width: 700pt)])
    only(1, rect((-0.8,-5.6), (14,5.4), fill:white, stroke:none))
    content((-9,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((14,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    content((14,1), text(14pt)[Guilherme])
  })
])

#slide(repeat: 3, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig3.png", width: 609pt)])
    only(1, rect((-1.0,-6.6), (3,6.4), fill:white, stroke:none))
    only("1-2", rect((3.3,-6.6), (7.3,6.4), fill:white, stroke:none))
    content((-9,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((14,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    content((14,1), text(14pt)[Guilherme])
  })
])

== Global succession patterns do not map neatly onto individuals

#slide[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig2a.png", width: 350pt)])
    content((9,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((14,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    content((14,1), text(14pt)[Guilherme])
    rect((-12,-5.6), (-11,2), fill:white, stroke: none)
    }))
]

== Studying the gut microbiome is statistically challenging

#slide(composer: (1fr,1fr))[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/factors-affecting-microbiome.png", width: 400pt)
])
    content((-5,-6), text(14pt)[@safarchiUnderstandingDysbiosisResilience2025])
    }))][
- Many inputs to microbial composition#pause
- Sparsity ("zero-inflation")#pause
- High-dimensionality (less bad in infants than in adults, but still hard)#pause
- Compositionality
]

== Studying the gut microbiome is statistically challenging, _especially in infants_
#slide(repeat: 2, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/yassour-timecourse.png", width: 750pt)])
    only(2, rect((-11.3,-5.6), (-7,5.4), stroke: 3pt+red))
    content((-10,-6), text(14pt)[@yassourNaturalHistoryInfant2016])
  })
])

== Approach one - cross-sectional by age

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/khula_africa.png", width: 321pt)], name:"fig")
        content((-3.5,-6), [  #text(10pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")
        (pause,)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-cohort.png", width: 304pt)], name:"fig2")
        (pause,)
        rect("fig2.south-east", (5.8,5), fill:white, stroke: none)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-longitudinal.png", width: 284pt)], name:"fig")
        })
    )
    #v(-1em)
]

== VEP is a measure of brain structure and function

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/michaleeg.png", width: 250pt)], name:"fig")
        content((-1.5,-6), [  #text(14pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")
        (pause,)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-eeg-curves.png", width: 450pt)], name:"fig")
        })
    )
]

== Approach one - cross-sectional by age


#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((-9.5,-8), [  #text(14pt)[@bonhamCodevelopmentGutMicrobial2025]], name:"cite")

        content((0, 0), [#image("assets/child_brain_microbiome/concurrent_volcano.png", width: 673pt)], name:"fig")
        content((0, -6), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")
            })
    )

]

== Approach two - "pseudo-longiditinal"


#slide(repeat: 2, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/fsea-futures.png", width: 673pt)], name:"fig")
    content((-8.5,-7), [  #text(14pt)[@bonhamCodevelopmentGutMicrobial2025]], name:"cite")
    only(1, rect((-4.0,-6.6), (12,6.4), fill:white, stroke:none))
  })
])


#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/future_volcano.png", width: 673pt)], name:"fig")
        content((0, -4), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")
        content((-8.5,-8), [  #text(14pt)[@bonhamCodevelopmentGutMicrobial2025]], name:"cite")

            })
    )

]

== Current directions

#slide(composer: (1fr,1fr))[
   #image("assets/child_brain_microbiome/who-length-age.png") 
 ][
- Gaussian Process models for better fit to time-varying data
  - "Microbiome age Z-score" analagous to growth curves #pause

*Other projects*
- stress responses in human milk metabolizing microbe
  _Bifidobacterium infantis_
- Software for easier analysis of Spatial 'Omics

 ]


#contact_info_slide

#thank-you-slide(slidesurl: "https://github.com/BonhamLab/presentation_DDW2026")

== Bibliography

#bibliography("refs.bib", title: none, style: "chicago-author-date")

