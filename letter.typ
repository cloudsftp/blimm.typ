#import "blimm.typ": blimm

#set text(lang: "en")

#show: blimm.with(
  recipient: (
    name: "John Doe",
    street: "Kirchenstraße 1",
    city: "Schorndorf",
  ),
  subject: "Example Letter",
  both-sign: true,
)

// Insert body here
