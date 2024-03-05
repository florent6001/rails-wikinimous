require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.destroy_all

10.times do
  content = "<p>#{Faker::Lorem.paragraph}</p>"
  10.times do
    content += "<h2>#{Faker::Lorem.sentence}</h2> \n"
    content += "<p>#{Faker::Lorem.paragraph}</p>"
  end
  Article.create(title: Faker::Lorem.sentence, content: content)
end
