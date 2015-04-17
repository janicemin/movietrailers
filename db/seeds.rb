# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.first.trailers.create(title: "monkey butt", embed_url: '<iframe width="560" height="315" src="https://www.youtube.com/embed/CsGYh8AacgY" frameborder="0" allowfullscreen></iframe>')