    let Profunctor = ./Type

in    λ(f : Type → Type → Type)
    → λ(profuctor : Profunctor f)
    → { dimap = profuctor.dimap, lmap = profuctor.lmap, rmap = profuctor.rmap }
