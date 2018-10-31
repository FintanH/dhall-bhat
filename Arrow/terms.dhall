    let Arrow = ./Type

in    λ(f : Type → Type → Type)
    → λ(arrow : Arrow f)
    → { arr =
          arrow.arr
      , compose =
          arrow.compose
      , dimap =
          arrow.dimap
      , fanout =
          arrow.fanout
      , first =
          arrow.first
      , identity =
          arrow.identity
      , lmap =
          arrow.lmap
      , rmap =
          arrow.rmap
      , second =
          arrow.second
      , split =
          arrow.split
      }
