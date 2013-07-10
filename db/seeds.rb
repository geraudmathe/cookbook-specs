salt = Ingredient.create! name: 'Salt'
pepper = Ingredient.create! name: 'Pepper'
milk = Ingredient.create! name: 'Milk'
olive_oil = Ingredient.create! name: 'Olive oil'
egg = Ingredient.create! name: 'Egg'
water = Ingredient.create! name: 'Water'
butter = Ingredient.create! name: 'Butter'

r = Recipe.create! name: 'Scrambled Eggs'
r.ingredients = [egg, salt, milk, butter]
r = Recipe.create! name: 'Omlette'
r.ingredients = [egg, milk, salt]


