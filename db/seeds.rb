puts "🌱 Seeding spices..."

# Seed your database here

# Quote.create(
#  title: "Your Own Pace", 
#  description: "Your direction is more important than your speed."
# )

# Quote.create(
#  title: "Positive Mindset", 
#  description: "If they dont know you personally. Dont take it personal."
# )

# Quote.create(
#  title: "Successful Mind", 
#  description: "It is never too late to be what you might have been."
# )

# puts "Clearing old data..."
# Quote.destroy_all
# Person.destroy_all

# create a quote and add it to person / associate 
# puts "Seeding quotes..."

# samantha = Person.create(
#  name: "Samantha", 
#  biography: "Student need inspiration"
# )

# peter = Person.create(
#  name: "Peter", 
#  biography: "Need motivation and inspiration"
# )

# sebastian = Person.create(
#  name: "Sebastian", 
#  biography: "Change in mentality and want to be successful"
# )

samantha = Username.find_by(
 name: "Samantha", 
 bio: "Student need inspiration"
)

peter = Username.find_by(
 name: "Peter", 
 bio: "Need motivation and inspiration"
)

sebastian = Username.find_by(
 name: "Sebastian", 
 bio: "Change in mentality and want to be successful"
)

Quote.first.update(username_ids: [samantha.id, peter.id, sebastian.id])
Quote.second.update(username_ids: [samantha.id, peter.id, sebastian.id])
Quote.third.update(username_ids: [samantha.id, peter.id, sebastian.id])
Quote.fourth.update(username_ids: [samantha.id, peter.id, sebastian.id])


puts "✅🌱 Done seeding! Ready to plant!"
