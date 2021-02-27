# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create!([
  {
    title: "Movie 1",
    rating: "12+",
    total_gross: 12000000,
    premiere: "2021-2-12",
    description: "Some long description"
  },
  {
    title: "Movie 2",
    rating: "16+",
    total_gross: 22000000,
    premiere: "2021-7-12",
    description: "Some long description 2"
  },
  {
    title: "Movie 3",
    rating: "0+",
    total_gross: 52000000,
    premiere: "2021-8-12",
    description: "Some long description 3"
  }
]) 