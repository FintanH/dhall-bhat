    let Either = ./Type

in  let bifunctor = ./bifunctor

in  let fromLeft = ./fromLeft

in  let fromRight = ./fromRight

in  let isLeft = ./isLeft

in  let isRight = ./isRight

in  let lefts = ./lefts

in  let monad = ../Monad/terms.dhall

in  let Either/monad = ./monad

in  let partition = ./partition

in  let rights = ./rights

in  let traversable = ./traversable

in    λ(a : Type)
    →   { fromLeft =
            fromLeft a
        , fromRight =
            fromRight a
        , isLeft =
            isLeft a
        , isRight =
            isRight a
        , lefts =
            lefts a
        , partition =
            partition a
        , rights =
            rights a
        }
      ∧ { bimap = bifunctor.bimap a }
      ∧ monad (Either a) (Either/monad a) ⫽ traversable a
