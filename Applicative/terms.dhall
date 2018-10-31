    let Applicative = ./Type

in  let leftApConst = ./leftApConst

in  let lift = ./lift

in  let rightApConst = ./rightApConst

in    λ(f : Type → Type)
    → λ(applicative : Applicative f)
    → { ap =
          applicative.ap
      , leftApConst =
          leftApConst f applicative
      , lift =
          lift f applicative
      , map =
          applicative.map
      , pure =
          applicative.pure
      , rightApConst =
          rightApConst f applicative
      }
