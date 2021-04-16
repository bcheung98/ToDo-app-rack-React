puts "Clearing old data..."
Category.destroy_all
Task.destroy_all

puts "Seeding Categories..."

# create categories
food = Category.create(name: "Food")
money = Category.create(name: "Money")
code = Category.create(name: "Code")
misc = Category.create(name: "Misc")

puts "Seeding tasks..."

# create tasks
buy_rice = Task.create(text: "Buy rice", category_id: food.id)
save_tenner = Task.create(text: "Save a tenner", category_id: money.id)
build_todo_app = Task.create(text: "Build a todo app", category_id: code.id)
build_todo_api = Task.create(text: "Build todo API", category_id: code.id)
get_isa = Task.create(text: "Get an ISA", category_id: money.id)
cook_rice = Task.create(text: "Cook rice", category_id: food.id)
tidy_house = Task.create(text: "Tidy house", category_id: misc.id)

puts "Done!"