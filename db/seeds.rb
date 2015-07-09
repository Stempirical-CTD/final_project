# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: "user@userone.com", username: "userone", password: "password")
user_two = User.create!(email: "user@usertwo.com", username: "usertwo", password: "password")

experiment = Experiment.create!(user_id: user.id, description: "How do scientists take DNA out
    of a living thing? It's not that hard—there are lots of ways to do it! You
    can follow the steps below. Either way you'll have strawberry DNA at the end!",
    youtube_link: "https://www.youtube.com/watch?v=67KXatgoNKs", complete_time: 1.5,
    name: "Extracting Strawberry DNA")

    mat_one = Material.create!(experiment_id: experiment.id, item: "measursing cup")
    mat_two = Material.create!(experiment_id: experiment.id, item: "measuring spoon")
    mat_three = Material.create!(experiment_id: experiment.id, item: "rubbing alcohol")

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


experiment_two = Experiment.create!(user_id: user_two.id, name: "How To Make A Spark",
    description: " A lightning bolt is basically a dramatic display of static electricity
        in action. You see lightning when a spark of moving electrons races up or
        down between a cloud and the ground.",
    youtube_link: "https://www.youtube.com/watch?v=XtE0uXGMC-0", complete_time: 1)

    mat_four= Material.create!(experiment_id: experiment_two.id, item: "pencil with erasser")
    mat_five= Material.create!(experiment_id: experiment_two.id, item: "aluminum tray")
    mat_six= Material.create!(experiment_id: experiment_two.id, item: "wool cloth")

    instruction_four = Instruction.create!(experiment_id: experiment_two.id,
        information: "Stick a pushpin through the center of the aluminum tray
            then stuck the pencil eraser to the pushpin.",
        order: 1)
    instruction_five = Instruction.create!(experiment_id: experiment_two.id,
        information: "Vigorously rub the wool on the Styrofoam tray for two minutes.
            It really takes two solid minutes!",
        order: 2)
    instruction_six = Instruction.create!(experiment_id: experiment_two.id,
        information: "Finally, picke up the aluminum tray using the pencil handle
            and set it on the Styrofoam plate.",
        order: 3)
