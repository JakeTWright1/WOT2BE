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

puts "Adding jobs and favourites to database"

# Create jobs

  Job.create!(
    title: "Data Scientist",
    average_salary: 100_000,
    duties: "Look at numbers",
    best_bits: "Find out meaningful patterns, things we don't get to see or realize as humans",
    worst_bits: "Lots of numbers",
    qualifications: "A love for math is all you need",
    video_url: "data_scientist_n3y55p"
  )

  Job.create!(
    title: "Estate Agent",
    average_salary: 60_000,
    duties: "Sell properties",
    best_bits: "Speak to people and show them lovely houses",
    worst_bits: "Spend a lot of time indoors",
    qualifications: "None",
    video_url: "estate_agent_qpsbar"
  )

  Job.create!(
    title: "Software Tester",
    average_salary: 50_000,
    duties: "Test the software",
    best_bits: "Get to break bits",
    worst_bits: "A lot of time spent in front of a screen",
    qualifications: "Do what you love",
    video_url: "kc2acmjfrjpy52py5izf"
  )


puts "Finished!"

puts
