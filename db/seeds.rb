puts "Clearing the database"
# Favourite.delete_all
Job.delete_all
# User.delete_all

# puts "Creating Users"

# 3.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: '123456',
#     password_confirmation: '123456'
#   )



# Create jobs

puts "Creating tags"

Tag.create!(name: "Information Technology (IT)")
Tag.create!(name: "Healthcare")
Tag.create!(name: "Education")
Tag.create!(name: "Business and Finance")
Tag.create!(name: "Creative and Media")
Tag.create!(name: "Engineering and Manufacturing")
Tag.create!(name: "Customer Service and Sales")
Tag.create!(name: "Science and Research")
Tag.create!(name: "Transportation and Logistics")
Tag.create!(name: "Construction and Trades")
Tag.create!(name: "Hospitality and Tourism")
Tag.create!(name: "Legal and Law Enforcement")
Tag.create!(name: "Social Services and Nonprofits")

puts "Finished!"

puts
