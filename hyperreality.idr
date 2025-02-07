Person : Type
Person = data {
    name = String
    race = Race
    gender = Gender
    morals = Morals
}

Physics : PhysicsModel = Type
Physics(x) = case x of {
    euclidian -> MkPhysics Euclidian
    _ -> MkPhysics NonEuclidian
} 
World : Type
World = data {
    model = PhysicsModel,
    physics = Physics(model),
    morals = Morals,
    politics = Politics,
}

Reality : World
Reality = MkWorld data {
    model = MkPhysicsModel euclidian,
    physics = MkPhysics model,
    morals = Christian 1,
    politics = NeoLiberal,
}

HyperReality : World
HyperReality = MkWorld data {
    model = MkPhysicsModel euclidian,
    physics = MkPhysics model,
    morals = CommodityFetishism 1,
    politics = FreeMarket,
}

p : Reality ≡ HyperReality
p = λ i → MkWorld data {
    model    = MkPhysicsModel euclidian, 
    physics  = MkPhysics model,            
    morals   = transport (\X => Morals X) ((interpolate Christian CommodityFetishism) i) morals,
    politics = transport (\X => Politics X) ((interpolate NeoLiberal FreeMarket) i) politics
}

-- 1D, reality and hyperreality are linked. 

q : Reality ≡ HyperReality
q = p

-- 2D, reality and hyperreality can transition from one to the other gradually.

h : p ≡≡ q
h = λ i j → refl

-- 3D, the transitions can transition. we've made a cube!
-- no matter how we transition from Reality -> Hyperreality, it's all the same!
-- all transitions get from A to B; they, themselves, are no longer relevant and are all equal. 
-- in other words, the process no longer matters. it is simply a continuous process...
-- ... it is free of narrative, it is free of context. it simply *is*.

H : (h1 : p ≡≡ q) → (h2 : p ≡≡ q) → h1 ≡≡≡ h2
H h1 h2 = λ i j k → refl

actor : (X: World) -> Person
actor x = MkPerson data {
    name = "Person",
    race = "Who Cares",
    gender = "Who Cares",
    morals = x.morals -- his belief is of his World
}

transportMorals = transport p a : Person(HyperReality)
transportMorals (p a Person(HyperReality))

interpolatedActor : (t : I). -> Person (p t)
interpolatedActor t = transport (\X => Person X) (p t) actor

-- Reality = [0], HyperReality = [1]

halfwayActor : Person (p 0.5)
halfwayActor = interpolatedActor 0.5 -- We interpolate the world to a half/half state, mixed.

-- Person is now between worlds here. It is fluid, there is not a sudden shift.
-- What are his morals now? His morals exist in a blend.
-- In a quantum state where it can collapse to <0.5 or >0.5.
-- However, it's still a blend. What is his intuition? Is it HIS intuition...
-- ... or just a product of his world?
