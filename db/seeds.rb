# puts "🌱 Seeding spices..."
puts "Clearing old data..."
# QuoteUsername.destroy_all
Username.destroy_all
Quote.destroy_all

# Seed your database here

Quote.create(
 title: "Your Own Pace", 
 description: "Your direction is more important than your speed."
)

Quote.create(
 title: "Positive Mindset", 
 description: "If they dont know you personally. Dont take it personal."
)

Quote.create(
 title: "Successful Mind", 
 description: "It is never too late to be what you might have been."
)

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

samantha = Username.create(
 name: "Samantha"
)

peter = Username.create(
 name: "Peter"
)

sebastian = Username.create(
 name: "Sebastian"
)

Quote.first.update(username_id: samantha.id)
Quote.second.update(username_id: sebastian.id)
Quote.third.update(username_id: peter.id)
# Quote.fourth.update(username_id: sebastian.id)



# 20.times do 
#  Username.create(
#   quote: Faker::Quote.
#   username: Faker::Name.name
#  )
# end



puts "✅🌱 Done seeding! Ready to plant!"