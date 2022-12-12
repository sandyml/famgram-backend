puts "🌱 Seeding spices..."

# Seed your database here

# Quote.create(title: "Quote 1", description: "Your direction is more important than your speed.")
# Quote.create(title: "Quote 2", description: "If they dont know you personally. Dont take it personal.")

# puts "Clearing old data..."
# Quote.destroy_all

# Person.destroy_all

# create a quote and add it to person / associate 
# puts "Seeding quotes..."

samantha = Person.create(name: "Samantha", biography: "Student need inspiration")

peter = Person.create(name: "Peter", biography: "Need motivation and inspiration")

sebastian = Person.create(name: "Sebastian", biography: "Change in mentality and want to be successful")

Quote.first(person_ids: [samantha.id, peter.id, sebastian.id])
Quote.second(person_ids: [samantha.id, peter.id, sebastian.id])
Quote.third(person_ids: [samantha.id, peter.id, sebastian.id])
Quote.fourth(person_ids: [samantha.id, peter.id, sebastian.id])


puts "✅🌱 Done seeding! Ready to plant"
