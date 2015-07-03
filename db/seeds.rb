# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: "user@userone.com", username: "userone", password: "password")
Experiment.create!(user_id: user.id, description: "How do scientists take DNA out
    of a living thing? It's not that hard—there are lots of ways to do it! You
    can follow the steps below. Either way you'll have strawberry DNA at the end!",
    lesson: "Strawberries, bacteria, humans—all living things have genes, and
        all of these genes are made of DNA. That's why scientists can take a
        gene from one living thing and put it into another.",
    youtube_link: "http://www.youtube.com", complete_time: 1.5)
