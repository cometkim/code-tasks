type t =
  | TypeScript({label: string})
  | NPM({label: string})
  | Shell({label: string})
  | Process({label: string})

let struct = S.union([
  S.object(o => {
    o->S.discriminant("type", S.literal(String("typescript")))
    TypeScript({
      label: o->S.field("label", S.string()),
    })
  }),
  S.object(o => {
    o->S.discriminant("type", S.literal(String("npm")))
    NPM({
      label: o->S.field("label", S.string()),
    })
  }),
  S.object(o => {
    o->S.discriminant("type", S.literal(String("shell")))
    Shell({
      label: o->S.field("label", S.string()),
    })
  }),
  S.object(o => {
    o->S.discriminant("type", S.literal(String("process")))
    Process({
      label: o->S.field("label", S.string()),
    })
  }),
])
