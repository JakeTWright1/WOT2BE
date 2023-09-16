puts "Clearing the database"
Favourite.delete_all
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
Tag.create!(name: "english")
Tag.create!(name: "chemistry")
Tag.create!(name: "mathematics")
Tag.create!(name: "biology")
Tag.create!(name: "physics")
Tag.create!(name: "languages")
Tag.create!(name: "history")
Tag.create!(name: "geography")
Tag.create!(name: "media-studies")
Tag.create!(name: "art-and-design")
Tag.create!(name: "IT")

puts "Creating Industries"
Industry.create!(name: "Information Technology (IT)", image_url: "https://img.freepik.com/free-vector/illustration-social-media-concept_53876-18383.jpg?w=2000")
Industry.create!(name: "Healthcare", image_url: "https://assets.aboutamazon.com/21/d3/171c031b4871a367060f2b974a59/health-hero-1.jpg")
Industry.create!(name: "Education", image_url: "https://nces.ed.gov/programs/coe/images/flagship/coe-144ppi.png")
Industry.create!(name: "Business and Finance", image_url: "https://federalcharacter.com/wp-content/uploads/2021/10/Class-11-Business-Studies-Sources-of-Business-Finance.jpg")
Industry.create!(name: "Creative and Media", image_url: "https://www.mediabistro.com/wp-content/uploads/2023/05/creative-jobs.png")
Industry.create!(name: "Engineering and Manufacturing", image_url: "https://www.harborcomputerservices.net/wp-content/uploads/2015/10/manufacturing-plan-1024x682@2x.jpg")
Industry.create!(name: "Customer Service and Sales", image_url: "https://www.signpost.com/wp-content/uploads/2021/11/call-center-customer-service-tips-scaled.jpeg")
Industry.create!(name: "Science and Research", image_url: "https://www.training.com.au/wp-content/uploads/science-stem-feature.png")
Industry.create!(name: "Transportation and Logistics", image_url: "https://www.marketing91.com/wp-content/uploads/2019/11/What-is-the-Importance-of-Transportation.jpg")
Industry.create!(name: "Construction and Trades", image_url: "https://storage.googleapis.com/joblist-content/hero-images/06-construction-jobs-with-no-experience.png")
Industry.create!(name: "Hospitality and Tourism", image_url: "https://bovardcollege.usc.edu/wp-content/uploads/iStock-1220225018-scaled.jpg")
Industry.create!(name: "Legal and Law Enforcement", image_url: "https://bcdn.mindler.com/bloglive/wp-content/uploads/2020/01/14152025/Law-Blog-Cover.png")
Industry.create!(name: "Social Services and Nonprofits", image_url: "https://www.planstreetinc.com/wp-content/uploads/2022/09/Social-Services-scaled.jpg")

puts "Finished!"

puts
