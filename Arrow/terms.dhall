    let Arrow = ./Type

in  let category = ./../Category/terms.dhall

in  let extractCategory = ./extractCategory

in  let extractStrong = ./extractStrong

in  let strong = ./../Strong/terms.dhall

in    λ(f : Type → Type → Type)
    → λ(arrow : Arrow f)
    →   { arr = arrow.arr, fanout = arrow.fanout, split = arrow.split }
      ∧ category f (extractCategory f arrow)
      ∧ strong f (extractStrong f arrow)
