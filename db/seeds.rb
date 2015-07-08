# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: "user@userone.com", username: "userone", password: "password")
user_two = User.create!(email: "user@usertwo.com", username: "usertwo", password: "password")
#
# experiment = Experiment.create!(user_id: user.id, description: "How do scientists take DNA out
#     of a living thing? It's not that hard—there are lots of ways to do it! You
#     can follow the steps below. Either way you'll have strawberry DNA at the end!",
#     youtube_link: "https://www.youtube.com/watch?v=67KXatgoNKs", complete_time: 1.5,
#     name: "Extracting Strawberry DNA")
#
#     mat_one = Material.create!(experiment_id: experiment.id, piece: "measursing cup")
#     mat_two = Material.create!(experiment_id: experiment.id, piece: "measuring spoon")
#     mat_three = Material.create!(experiment_id: experiment.id, piece: "rubbing alcohol")
#
#     instruction_one = Instruction.create!(experiment_id: experiment.id,
#         information: "Chill the rubbing alcohol in the freezer. (You'll need it later.)",
#         order: 1)
#     instruction_two = Instruction.create!(experiment_id: experiment.id,
#         information: "Mix the salt, water, and Dawn detergent in a glass or small
#             bowl. Set the mixture aside. This is your extraction liquid.",
#         order: 2)
#     instruction_three = Instruction.create!(experiment_id: experiment.id,
#         information: "Line the funnel with the cheesecloth, and put the funnel's
#             tube into the glass.",
#         order: 3)
#
  experiment_one = Experiment.create!(user_id: user.id,
    description: "This water science experiment demonstrates the degree of motion
      of water molecules at different temperatures.",
    lesson: "https://en.wikipedia.org/wiki/Brownian_motion",
    youtube_link: "https://www.youtube.com/watch?v=iTbEmvdzvxg", complete_time: 1, name: "Brownian Motion")

    mat_one = Material.create!(experiment_id: experiment_one.id, item: "three clear drinking glasses")
    mat_two = Material.create!(experiment_id: experiment_one.id, item: "hot water")
    mat_three = Material.create!(experiment_id: experiment_one.id, item:
      "dark colored food dye (red, blue or gree are best)")

    instruction_one = Instruction.create!(experiment_id: experiment_one.id,
          information:"The three drinking glasses each must contain water at
              different temperatures. One needs to be cold, the second room temperature
              (straight from the tap) and the third needs to be very hot. Place all three
              glasses of water next to each other on a bench. Wait until the water in all
              three glasses appears still. Then, as quickly as possible, ass two drops of
              the food dye to each glass. For the best effect, the dye should be added to
              the cold glass first, then the room temperature glass and last to the hot
              water glass. It is also best to add the food dye with minimal splashing so
              that the food dye entering the water is a minimal source of disturbance.
              That said, it is best for your child to add the food dye herself as this
              increases her involvement and will make the results far more interesting.",
              order: 1)

  experiment_two = Experiment.create!(user_id: user.id, description: "This is a
      lesson on chemical bonds.",
      lesson: "http://www.colorado.edu/MCEN/flowvis/galleries/2011/Team-1/Reports/Velasquez_Gary.pdf",
      youtube_link: "https://www.youtube.com/watch?v=rqQSlEViNpk", complete_time: 1,
      name: "Surface Tension and Surfecants")

      mat_one = Material.create!(experiment_id: experiment_two.id, item: "Milk (whole or 2%)")
      mat_two = Material.create!(experiment_id: experiment_two.id, item: "Dinner plate")
      mat_three = Material.create!(experiment_id: experiment_two.id, item: "Food coloring (red, yellow, green, blue)")
      mat_four = Material.create!(experiment_id: experiment_two.id, item: "Dish-washing soap (Dawn brand works well)")
      mat_five = Material.create!(experiment_id: experiment_two.id, item: "Cotton swabs")

    instruction_one = Instruction.create!(experiment_id: experiment_two.id,
          information: "Pour enough milk in the dinner plate to completely cover
            the bottom to the depth of about 1/4 inch. Allow the milk to settle.",
            order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_two.id,
          information: "Add one drop of each of the four colors of food coloring
            - red, yellow, blue, and green - to the milk. Keep the drops close
            together in the center of the plate of milk.",
            order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_two.id,
          information: "Find a clean cotton swab for the next part of the experiment.
             Predict what will happen when you touch the tip of the cotton swab
             to the center of the milk. It's important not to stir the mix.
             Just touch it with the tip of the cotton swab. Go ahead and try it.
             Did anything happen?",
            order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_two.id,
          information: "Now place a drop of liquid dish soap on the other end
            of the cotton swab. Place the soapy end of the cotton swab back in the
            middle of the milk and hold it there for 10 to 15 seconds.
            Look at that burst of color! It's like the 4th of July in a bowl of milk!",
            order: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_two.id,
          information: "Add another drop of soap to the tip of the cotton swab
          and try it again. Experiment with placing the cotton swab at different
          places in the milk. Notice that the colors in the milk continue to move
          even when the cotton swab is removed. What makes the food coloring
          in the milk move?",
            order: 5)

  experiment_three = Experiment.create!(user_id: user.id,
    description: "Watch old pennies turn bright and shiny right before your eyes!",
    lesson: "http://www.ehow.com/about_5133409_do-pennies-corrode.html",
    youtube_link: "https://www.youtube.com/watch?v=LYAC7lYC9xY", complete_time: 1,
    name: "Oxidation of Copper Pennies")

    mat_one = Material.create!(experiment_id: experiment_three.id, item: "  20 dull, dirty pennies")
    mat_two = Material.create!(experiment_id: experiment_three.id, item: "1/4 cup white vinegar")
    mat_three = Material.create!(experiment_id: experiment_three.id, item: "1 teaspoon salt")
    mat_four = Material.create!(experiment_id: experiment_three.id, item: "A clear, shallow bowl (not metal)")
    mat_five = Material.create!(experiment_id: experiment_three.id, item: "Paper towels")

    instruction_one = Instruction.create!(experiment_id: experiment_three.id,
      information: "Put the salt and vinegar into the bowl and stir until it dissolves.",
        order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_three.id,
      information: "Put the pennies into the bowl for about 5 minutes.
        Watch them when they first go in. What do you see?",
        order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_three.id,
      information: "Take half the pennies out and place them on a paper towel.",
        order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_three.id,
      information: "Take the second half out and rinse them off very well.
        Place them on a paper towel and mark it as being “rinsed.”",
        order: 4)
      instruction_five = Instruction.create!(experiment_id: experiment_three.id,
        information: "Wait about an hour and then check back on your two piles.
         What differences does your child see between the two? Record the
         differences and make some guesses about why they are different.
         The rinsed pennies should be bright and look brand new.",
          order: 5)

  experiment_four = Experiment.create!(user_id: user.id,
    description: "Build a balloon inflater.",
    lesson: " ",
    youtube_link: "https://www.youtube.com/watch?v=t--PRg1kd8g", complete_time: 1,
    name: "Inflating a balloon")

    mat_one = Material.create!(experiment_id: experiment_four.id, item: "One small empty plastic soda or water bottle")
    mat_two = Material.create!(experiment_id: experiment_four.id, item: "1/2 cup of vinegar")
    mat_three = Material.create!(experiment_id: experiment_four.id, item: "Small balloon")
    mat_four = Material.create!(experiment_id: experiment_four.id, item: "Baking soda")
    mat_five = Material.create!(experiment_id: experiment_four.id, item: "Funnel or piece of paper")

    instruction_one = Instruction.create!(experiment_id: experiment_four.id,
      information: "Carefully pour the vinegar into the bottle.",
        order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_four.id,
      information: "This is the tricky part: Loosen up the balloon by stretching
      it a few times and then use the funnel to fill it a bit more than half
      way with baking soda. If you don’t have a funnel you can make one using
      the paper and some tape.",
        order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_four.id,
      information: "Now carefully put the neck of the balloon all the way over
      the neck of the bottle without letting any baking soda into the bottle.",
        order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_four.id,
      information: "Ready? Lift the balloon up so that the baking soda falls
      from the balloon into the bottle and mixes with the vinegar.
      Watch the fizz-inflator at work!",
        order: 4)

  experiment_four = Experiment.create!(user_id: user.id,
    description: "Build a balloon inflater.",
    lesson: " ",
    youtube_link: "https://www.youtube.com/watch?v=t--PRg1kd8g", complete_time: 1,
    name: "Inflating a balloon")
