#import "@preview/letter-pro:2.1.0": letter-simple

#set text(lang: "de")

#let blimm(
  annotations: "",
  recipient: "",
  reference-signs: (),
  date: "",
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

    date: datetime.today().display(),
    subject: subject,
  )

  body
}

#show: blimm.with(
  annotations: "Annotation",
  recipient: [
    Test Recipient\
    73660 Urbach\
    Germany
  ],
  subject: "First Letter",
)

Sehr geehrte Damen und Herren,

die von mir bei den Werbekosten geltend gemachte Abschreibung für den im
vergangenen Jahr angeschafften Fotokopierer wurde von Ihnen nicht berücksichtigt.
Der Fotokopierer steht in meinem Büro und wird von mir ausschließlich zu beruflichen
Zwecken verwendet.

Ich lege deshalb Einspruch gegen den oben genannten Einkommensteuerbescheid ein
und bitte Sie, die Abschreibung anzuerkennen.

Anbei erhalten Sie eine Kopie der Rechnung des Gerätes.

Mit freundlichen Grüßen
#v(1cm)
Anja Ahlsen

#v(1fr)
*Anlagen:*
- Rechnung
