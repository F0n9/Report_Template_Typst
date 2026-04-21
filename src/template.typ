#import "theme.typ": *
#import "@preview/chic-hdr:0.5.0":*
#import "@preview/equate:0.3.2":*

#let project(
  title: "",
  subtitle: "",
  university: "",
  faculty: "",
  department: "",
  course: "",
  class: "",
  group: "",
  members: (),
  instructors: (),
  date: "",
  logo: none,
  border: none,
  body
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 2.5cm),
  )

  set text(
    font: body_font,
    size: 11.5pt,
    fill: body_color,
    lang: "vi",
  )

  set par(
    justify: true,
    first-line-indent: (amount: 1.2em, all: true),
    leading: 0.72em,
  )

  set list(indent: 1.5em)

  // Numbering
  set heading(
    numbering: "1.1",
    supplement: [Mục],
  )

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.2em)
    if it.numbering != none {
      let nums = counter(heading).at(it.location())
      let s = nums.map(str).join(".")
      text(fill: title_color, font: body_font, size: 20pt)[
        #s #h(0.1em)
        #box(width: 1.2pt, height: 1.1em, fill: title_color.darken(30%), baseline: 20%)
        #h(0.2em)
        #it.body
      ]
    } else {
      text(fill: title_color, font: body_font, size: 20pt)[
        #it.body
      ]
    }
    v(0.8em)
  }

  show heading.where(level: 2): it => [
    #text(font: body_font, size: 16pt, fill: title_color,)[#it]
  ]

  show heading.where(level: 3): it => [
    #text(font: body_font, fill: title_color,)[#it] #v(0.5em)
  ]
  
  show heading.where(level: 3): set heading(outlined: false)

  // Math setup
  set math.equation(numbering: "(1.1)")
  show: equate.with(breakable: true, sub-numbering: true)

  // Figure caption
  show figure.caption: it => [
    #set text(size: 10pt, fill: soft_color)
    #strong[#it.supplement #it.counter.display(it.numbering)]
    #it.separator
    #it.body
  ]
  show figure.where(kind: table): set figure.caption(position: top)

  // Cover Page
  if border != none {
    place(top + left, dx: -1.5cm, dy: -1.5cm)[
      #image(border, width: 100% + 3cm, height: 100% + 3cm, fit: "stretch")
    ]
  }

  align(center)[
    #v(0.5cm)
    #text(16pt, weight: "bold")[#university]
    #v(0.3cm)
    #text(14pt, weight: "bold")[#faculty]
    #v(1.2cm)
    #if logo != none {
      image(logo, width: 32%)
    }
    #v(1.2cm)
    #text(24pt, weight: "bold", fill: title_color)[#title]
    #v(0.4cm)
    #text(22pt, weight: "bold")[#subtitle]
    #v(0.4cm)
    #align(center)[
      #set text(15pt)
      #grid(
        columns: (auto, auto),
        column-gutter: 0.3cm,
        row-gutter: 0.2cm,
        align: (left, left),
        [*Môn học:*], [#course],
        [*Lớp:*], [#class],
      )
    ]
    #v(1.5cm)
  ]

  align(center)[
    #block(width: 86%)[
      #line(length: 100%, stroke: 0.6pt + luma(160))
      #v(0.5cm)

      #grid(
        columns: (1.25fr, 1fr),
        column-gutter: 1.2cm,
        [
          #align(left)[
            #text(weight: "semibold", 12pt)[#group]
            #v(0.15cm)
            #table(
              columns: (1fr, auto),
              stroke: (x, y) => if x == 1 { (left: 0.8pt + title_color) } else { none },
              align: (left, right),
              inset: (col, row) => (
                left: if col == 0 { 0pt } else { 8pt },
                right: 8pt,
                y: 4.5pt,
              ),
              ..for (name, id) in members {
                ([#name], [#id])
              }
            )
          ]
        ],
        [
          #align(left)[
            #text(weight: "semibold", 12pt)[Giảng viên hướng dẫn]
            #v(0.15cm)
            #table(
              columns: (auto,),
              stroke: none,
              inset: (left: 0pt, right: 0pt, y: 4.5pt),
              ..for instr in instructors {
                ([#instr],)
              }
            )
          ]
        ],
      )
    ]
  ]

  place(bottom + center)[
    #text(11pt)[#date]
    #v(0.5cm)
  ]

  pagebreak()

  // Table of Contents
  counter(page).update(1)
  
  let hf-style(body) = text(fill: rgb("#677CA6"), size: 10pt, body)
  
  show: chic.with(
    chic-header(
      left-side: hf-style[*FIT-HCMUS*],
      right-side: hf-style[*University of Science - VNUHCM*],
    ),
    chic-footer(
      left-side: hf-style[*#department*],
      right-side: hf-style(strong(context [#counter(page).display() / #counter(page).final().at(0)])),
    ),
    chic-separator(0.6pt + rgb("#A5B4D6")),
    chic-offset(14pt),
  )

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(text(fill: title_color, it))
  }

  outline(title: [Mục lục], depth: 3, indent: auto)
  pagebreak()

  body
}
