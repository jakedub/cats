# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ALPHABET = ('a'..'z').to_a
PATTERNS = %w(solid bi-color tabby calico tortoiseshell)
COLORS   = %w(white black brown blue ginger)

100.times do
  Cat.create!(
    name:         ALPHABET.sample(8).join.capitalize,
    coat_pattern: PATTERNS.sample,
    coat_color:   COLORS.sample
  )
end
