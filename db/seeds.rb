i = Ingredient.create! name: 'Egg'

r = Recipe.create! name: 'Scrambled Eggs', ingredient_ids: [i.id]

r = Recipe.create! name: 'Omlette', ingredient_ids: [i.id]


