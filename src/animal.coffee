class window.Animal
  @CATEGORIES = ["All", "Dog", "Cat", "Rabbit", "Horse"]
  
  behaviors: ->
    switch @type
      when "cat" then ["meow", null]
      when "dog" then ["bark", "wag"]
      when "rabbit" then [null, "hop hop"]
      when "horse", "donkey"
        ["neigh", null]
      else 
        [null,null]

  matchesFilter: (criteria='All') ->
    criteria is "All" or criteria.toLowerCase() is @type      

  @fromHash: (data) ->
    animal = new @
    animal[key] = val for key, val of data
    animal

  @loadSeedData: ->
    animalData = [
      name: "Kelsey"
      type: "dog"
      age: 2
      breed: "Labrador"
      image: ""
      description: "A sweet and loyal dog. Loves to play fetch. Sometimes drinks out of the toilet."
    ,
      name: "Sgt. Snuffles"
      type: "dog"
      age: 4
      breed: "Pug"
      image: ""
      description: "Small in stature, but big in heart, Sgt. Snuffles is never one to back down from a mission."
    ,
      name: "Chomps"
      type: "rabbit"
      age: 5
      breed: "Giant Angora"
      image: ""
      description: "Chomps is usually very good-natured, but he does not take kindly to being mistaken for an ottoman. Come see him in person and you'll understand why that may happen."
    ,
      name: "Flops"
      type: "rabbit"
      age: 3
      breed: "French Lop"
      image: "flops.jpg"
      description: "Enjoys nothing more than a good roll in the grass and a nap in the sun."
    ,
      name: "Bopper"
      type: "rabbit"
      age: 3
      breed: "Checkered Giant"
      image: ""
      description: "The quiet one of the group. Loves celery."
    ,
      name: "Chairman Meow"
      type: "cat"
      age: 1
      breed: "Snowshoe"
      image: ""
      description: "True to his name, Chairman Meow fancies himself in charge."
    ,
      name: "Jacques"
      type: "cat"
      age: 2
      breed: "Manx"
      image: ""
      description: "A happy-go-lucky cat who occasionally finds himself at odds with Chairman Meow over who gets to sit at the top of the cat tree."
    ,
      name: "Chupa"
      type: "cat"
      age: 2
      breed: "Scottish Fold"
      image: "chupa.jpg"
      description: "Chupa always appears perplexed with the world, but don't be fooled. That's just the way his face is shaped."
    ,
      name: "Alfred"
      type: "horse"
      age: 6
      breed: "Breton"
      image: ""
      description: "The resident shop patriarch. Very calm and tolerates the antics of the other animals when they sneak into his pen."
    ]
  
    for animal in animalData
      @fromHash animal