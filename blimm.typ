#import "@preview/letter-pro:2.1.0": letter-simple

#let blimm(
  annotations: "",
  recipient: (
    company: "energiesandsuch",
    name: "John Doe",
    street: "Kirchstraße 1",
    city: "70563 Stuttgart"
  ),
  reference-signs: (),
  date: datetime.today(),
  date-format: "[year]-[month]-[day]",
  subject: "Empty Subject",
  both-sign: false,
  body
) = {
  show: letter-simple.with(
    sender: (
      name: "Fabian Weik",
      address: "Kurt-Schumacher-Straße 64, 67663 Kaiserslautern",
      extra: [
        Tel: #link("tel:+4917634969240")[+49 176 34969240]\
        E-Mail: #link("mailto:fabian.weik@protonmail.com")[fabian.weik\@protonmail.com]\
      ],
    ),

    annotations: annotations,
    recipient: {
       if "company" in recipient {
         recipient.company
       }
       linebreak()

       recipient.name
       linebreak()

       recipient.street
       linebreak()

       recipient.city

       if "country" in recipient {
         linebreak()
         recipient.country
       }
    },

    reference-signs: reference-signs,

    date: date.display(date-format),
    subject: subject,
  )

  body

  [ // empty line for spacing

  ]

  context {
    if text.lang == "de" {
      [
        Mit freundlichen Grüßen
      ]
    } else {
      [
        Yours sincerely,
      ]
    }
  }
  v(1.5cm)
  [Fabian Weik]
  if both-sign {
    h(3fr)
    recipient.name
    h(2fr)
  }
}
