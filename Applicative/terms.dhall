    let Applicative = ./Type

in  let extractFunctor = ./extractFunctor

in  let functor = ./../Functor/terms.dhall

in  let leftApConst = ./leftApConst

in  let lift = ./lift

in  let rightApConst = ./rightApConst

in    λ(f : Type → Type)
    → λ(applicative : Applicative f)
    →   { ap =
            applicative.ap
        , leftApConst =
            leftApConst f applicative
        , lift =
            lift f applicative
        , pure =
            applicative.pure
        , rightApConst =
            rightApConst f applicative
        }
      ∧ functor f (extractFunctor f applicative)
