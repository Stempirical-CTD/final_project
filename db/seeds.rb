# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: "user@userone.com", username: "userone", password: "password")

experiment = Experiment.create!(user_id: user.id, description: "How do scientists take DNA out
    of a living thing? It's not that hard—there are lots of ways to do it! You
    can follow the steps below. Either way you'll have strawberry DNA at the end!",
    lesson: "Strawberries, bacteria, humans—all living things have genes, and
        all of these genes are made of DNA. That's why scientists can take a
        gene from one living thing and put it into another.",
    youtube_link: "http://www.youtube.com", complete_time: 1.5)

  mat_one = Material.create!(experiment_id: experiment.id, piece: "measursing cup")
  mat_two = Material.create!(experiment_id: experiment.id, piece: "measuring spoon")
  mat_three = Material.create!(experiment_id: experiment.id, piece: "rubbing alcohol")

  instruction_one = Instruction.create!(experiment_id: experiment.id,
      information: "Chill the rubbing alcohol in the freezer. (You'll need it later.)",
      order: 1)
  instruction_two = Instruction.create!(experiment_id: experiment.id,
      information: "Mix the salt, water, and Dawn detergent in a glass or small
          bowl. Set the mixture aside. This is your extraction liquid.",
      order: 2)
  instruction_three = Instruction.create!(experiment_id: experiment.id,
      information: "Line the funnel with the cheesecloth, and put the funnel's
          tube into the glass.",
      order: 3)
