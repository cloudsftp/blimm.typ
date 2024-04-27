#import "@preview/letter-pro:2.1.0": letter-simple

#let blimm(
  annotations: "",
  recipient: "Empty Recipient",
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
        E-Mail: #link("mailto:fabian.weik@protonmail.com")[fabian.weik\@protonmail.com]\
      ],
    ),

    annotations: annotations,
    recipient: recipient,

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
        #v(1cm)
        Fabian Weik
      ]
    } else {
      [
        Yours sincerely,
        #v(1cm)
        Fabian Weik
      ]
    }
  }
}
