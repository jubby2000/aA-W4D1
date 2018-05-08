# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
User.destroy_all
ArtworkShare.destroy_all
Artwork.destroy_all


User.create!(username: Faker::Name.unique.name)
User.create!(username: Faker::Name.unique.name)
User.create!(username: Faker::Name.unique.name)
User.create!(username: Faker::Name.unique.name)
User.create!(username: Faker::Name.unique.name)
superhero = Faker::Superhero.unique.name
Artwork.create!(title: superhero, image_url: "fsakdjgfsjkdf", artist_id: User.first.id)
Artwork.create!(title: superhero, image_url: "fsakdf", artist_id: User.second.id)
Artwork.create!(title: Faker::Superhero.unique.name, image_url: "df", artist_id: User.last.id)
# debugger
ArtworkShare.create!(viewer_id: User.third.id, artwork_id: Artwork.first.id)
ArtworkShare.create!(viewer_id: User.fourth.id, artwork_id: Artwork.second.id)
ArtworkShare.create!(viewer_id: User.fifth.id, artwork_id: Artwork.third.id)
ArtworkShare.create!(viewer_id: User.first.id, artwork_id: Artwork.third.id)
end
