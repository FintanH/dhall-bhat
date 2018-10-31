    let Functor = ./Type

in  let leftConst = ./leftConst

in  let rightConst = ./rightConst

in  let void = ./void

in    λ(f : Type → Type)
    → λ(functor : Functor f)
    → { map =
          functor.map
      , leftConst =
          leftConst f functor
      , rightConst =
          rightConst f functor
      , void =
          void f functor
      }
