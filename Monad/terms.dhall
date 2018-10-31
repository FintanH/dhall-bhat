    let Monad = ./Type

in  let applicative = ./../Applicative/terms.dhall

in  let extractApplicative = ./extractApplicative

in    λ(f : Type → Type)
    → λ(monad : Monad f)
    →   { bind =
              λ(a : Type)
            → λ(b : Type)
            → λ(fa : f a)
            → λ(k : a → f b)
            → monad.bind a b fa k
        , join =
              λ(a : Type)
            → λ(ffa : f (f a))
            → monad.bind (f a) a ffa (λ(fa : f a) → fa)
        }
      ∧ applicative f (extractApplicative f monad)
