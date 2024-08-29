@schema @tag("type")
type t =
  | @as("typescript") TypeScript({label: string})
  | @as("npm") NPM({label: string})
  | @as("shell") Shell({label: string})
  | @as("process") Process({label: string})
