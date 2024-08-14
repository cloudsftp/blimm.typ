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
  body
) = {
  show: letter-simple.with(
    sender: (
      name: "Fabian Weik",
      address: "Ostlandstraße 25, 32339 Espelkamp",
      extra: [
        Tel: #link("tel:+4917634969240")[+49 176 34969240]\
        E-Mail: #link("mailto:fabian.weik@protonmail.com")[fabian.weik\@protonmail.com]\
      ],
    ),

    annotations: annotations,
    recipient: [
        #recipient.company \
        #recipient.name \
        #recipient.street \
        #recipient.city
    ],

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
        #v(1.5cm)
        Fabian Weik
      ]
    } else {
      [
        Yours sincerely,
        #v(1.5cm)
        Fabian Weik
      ]
    }
  }
}
