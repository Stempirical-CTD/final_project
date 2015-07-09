
user = User.create!(email: "user@userone.com", username: "userone", password: "password")
user_two = User.create!(email: "user@usertwo.com", username: "usertwo", password: "password")

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

  experiment_five = Experiment.create!(user_id: user.id,
    description: "How do scientists take DNA out of a living thing? It's not
    that hard—there are lots of ways to do it!",
    lesson: "https://en.wikipedia.org/wiki/Plant_genetics",
    youtube_link: "https://www.youtube.com/watch?v=67KXatgoNKs", complete_time: 1.5,
    name: "Extracting Strawberry DNA")
     mat_one = Material.create!(experiment_id: experiment_five.id, item: "Strawberry")
     mat_two = Material.create!(experiment_id: experiment_five.id, item: "Isopropyl alcohol (5 mL)")
     mat_three = Material.create!(experiment_id: experiment_five.id, item: "Dish soap (10 mL)")
     mat_four = Material.create!(experiment_id: experiment_five.id, item: "Salt (1/4 tsp)")
     mat_five = Material.create!(experiment_id: experiment_five.id, item: "Zipper-lock bag")
     mat_six = Material.create!(experiment_id: experiment_five.id, item: "Sieve")
     mat_seven = Material.create!(experiment_id: experiment_five.id, item: "Water")
     mat_eight = Material.create!(experiment_id: experiment_five.id, item: "Measuring utensils")
     mat_nine = Material.create!(experiment_id: experiment_five.id, item: "Beakers or similar containers")
     mat_ten = Material.create!(experiment_id: experiment_five.id, item: "Tweezers")
     mat_ten = Material.create!(experiment_id: experiment_five.id, item: "Pipette(optional)")
     mat_ten = Material.create!(experiment_id: experiment_five.id, item: "Spoon")
     instruction_one = Instruction.create!(experiment_id: experiment_five.id,
       information: "Put a bottle of isopropyl alcohol in a freezer. We'll come back to it later.",
         order: 1)
     instruction_two = Instruction.create!(experiment_id: experiment_five.id,
       information: "Measure 90 mL of water into a beaker or similar container.",
         order: 2)
     instruction_three = Instruction.create!(experiment_id: experiment_five.id,
       information: "Pour 10 mL of dish soap into the 90 mL of water.",
         order: 3)
     instruction_four = Instruction.create!(experiment_id: experiment_five.id,
       information: "Add 1/4 tsp of salt to the liquid in the beaker.",
         order: 4)
     instruction_five = Instruction.create!(experiment_id: experiment_five.id,
       information: "Mix it all up and now you've got a homemade extraction solution!",
         order: 5)
     instruction_six = Instruction.create!(experiment_id: experiment_five.id,
       information: "Place one strawberry in a plastic zipper-lock bag",
         order: 6)
     instruction_seven = Instruction.create!(experiment_id: experiment_five.id,
       information: "Pour your extraction solution into the bag with the strawberry.",
         order: 7)
     instruction_eight = Instruction.create!(experiment_id: experiment_five.id,
       information: "Remove as much air from the bag as possible and seal it.",
         order: 8)
     instruction_nine = Instruction.create!(experiment_id: experiment_five.id,
       information: "Use your hands to mash, smash, and mush the strawberry
       inside of the bag until there are no large pieces remaining.",
         order: 9)
     instruction_ten = Instruction.create!(experiment_id: experiment_five.id,
       information: "Pour the resulting strawberry and extraction solution
       mixture through a sieve and into a beaker or similar container.",
         order: 10)
     instruction_eleven = Instruction.create!(experiment_id: experiment_five.id,
      information: "Use a spoon to press the strained bits of strawberry against
      the sieve, forcing even more of the solution into the beaker.",
        order: 11)
     instruction_twelve = Instruction.create!(experiment_id: experiment_five.id,
       information: "From the container it is currently in, transfer the solution
       into a smaller beaker or similar container that holds around 50-100 mL of fluid.",
        order: 12)
     instruction_thirteen = Instruction.create!(experiment_id: experiment_five.id,
       information: "Add 5 mL of your chilled isopropyl alcohol to the solution
       and hold the mixture at eye level.",
        order: 13)
     instruction_fourteen = Instruction.create!(experiment_id: experiment_five.id,
       information: "Can you see how there is a separation of white 'stuff'
        atop the rest of the solution? That's the DNA of the strawberry.",
         order: 14)
     instruction_fifteen = Instruction.create!(experiment_id: experiment_five.id,
       information: "Gently remove the DNA from the solution using tweezers.",
        order: 15)

  experiment_six = Experiment.create!(user_id: user.id,
    description: "Pick Up Trash Without Touching It.",
    lesson: " ",
    youtube_link: "https://www.youtube.com/watch?v=sCoqrc9LAxg", complete_time: 1,
    name: "Machanical Grabber")

    mat_one = Material.create!(experiment_id: experiment_six.id, item: "Wire clothes hanger
     (Use the type with a cardboard tube attached to open-ended wire.)")
    mat_two = Material.create!(experiment_id: experiment_six.id, item: "string")
    mat_three = Material.create!(experiment_id: experiment_six.id, item: "rubber bands")
    mat_four = Material.create!(experiment_id: experiment_six.id, item: "duct tape")
    mat_five = Material.create!(experiment_id: experiment_six.id, item: "PVC plastic pipe (1 inch in
      diameter and 3 feet long)")
    mat_six = Material.create!(experiment_id: experiment_six.id, item: "wooden
      dowel (1/4 inch in diameter and at least 3 feet long) (You can find duct
      tape, PVC plastic pipe and wooden dowels at a hardware store.)")

    instruction_one = Instruction.create!(experiment_id: experiment_six.id,
      information: "Remove the cardboard tube from the hanger. Reshape the two
      sides to form the “hands” of the grabber.", order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_six.id,
      information: "Straighten out the hooked part of the hanger
      (the part that hangs over the rod in your closet).",
        order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_six.id,
      information: "Attach a dowel to the straightened hanger with duct tape.
       Place the straightened hanger and dowel
      into one end of the PVC plastic pipe.The “hands”
      of the hanger should poke out of one end
      of the pipe and the dowel should poke
      out of the other.",
        order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_six.id,
      information: "Add rubber bands or duct tape to each
        of the “hands” of the hanger.",
        order: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_six.id,
      information: "Pull on the dowel to make the “hands”
        of the grabber come together and push on
        the dowel to release them.",
        order: 5)
    instruction_six = Instruction.create!(experiment_id: experiment_six.id,
      information: "Try it out. Can you pick up a piece of paper? A soda
        can? How can you improve your grabber?.",
        order: 6)

  experiment_seven = Experiment.create!(user_id: user.id,
    description: "Arrows Optical Illusion",
    lesson: " ",
    youtube_link: "https://www.youtube.com/watch?v=eN-DB_XuhRs", complete_time: 1,
    name: "Arrows Optical Illusion")

    mat_one = Material.create!(experiment_id: experiment_seven.id, item: "Pipe cleaners")
    mat_two = Material.create!(experiment_id: experiment_seven.id, item: "scissors")

    instruction_one = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Take two pipe cleaners that are the same length and the same
      color. If they aren't the same, the optical illusion won't work.", order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Cut in half two other pipe cleaners that are a different color.
      These will be the ends of your arrows.",
        order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Wrap the end of one long pipe cleaner around the middle of
      one short pipe cleaner. Then bend the short one in half so it looks like
      an arrow. Do the same thing with the other end.",
        order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Then do it again with the other pipe cleaner, but this time,
      turn the arrows the other way.",
        order: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Move your pipe cleaners apart... Now you have an optical
      illusion! Even though the two long pipe cleaners are the same length, one
      of them should look shorter than the other.",
        order: 5)

    experiment_eight = Experiment.create!(user_id: user.id,
      description: "The FLoating Egg",
      lesson: "https://en.wikipedia.org/wiki/Density",
      youtube_link: "https://www.youtube.com/watch?v=gfuLoaEYKis", complete_time: 1,
      name: "The FLoating Egg")

      mat_one = Material.create!(experiment_id: experiment_eight.id, item: "Two dirnking glasses")
      mat_two = Material.create!(experiment_id: experiment_eight.id, item: "Two raw eggs")
      mat_three = Material.create!(experiment_id: experiment_eight.id, item: "Table salt")
      mat_four = Material.create!(experiment_id: experiment_eight.id, item: "Spoon")

      instruction_one = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill one of the drinking glasses almost to the top with
        plain tap water.", order: 1)
      instruction_two = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Gently drop one of the eggs into the water-filled glass.
        It sinks right to the bottom!",
          order: 2)
      instruction_three = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill the second drinking glass half-full with water.",
          order: 3)
      instruction_four = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Add four tablespoons of table salt to the water, and stir.",
          order: 4)
      instruction_five = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill the rest of the cup with water, almost to the top.",
          order: 5)
      instruction_six = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Gently place the second egg into the salt water solution… it floats!",
          order: 6)




  experiment_nine = Experiment.create!(user_id: user.id,
    description: "Drops on a Penny",
    lesson: "https://www.scienceworld.ca/resources/activities/drops-penny",
    youtube_link: "https://www.youtube.com/watch?v=XQbr9Ic8_hA", complete_time: 1,
    name: "Drops on a Penny")

    mat_one = Material.create!(experiment_id: experiment_nine.id, item: "A Penny")
    mat_two = Material.create!(experiment_id: experiment_nine.id, item: "An eyedropper")
    mat_three = Material.create!(experiment_id: experiment_nine.id, item: "Water")
    mat_four = Material.create!(experiment_id: experiment_nine.id, item: "mineral/baby/olive oil")
    mat_five = Material.create!(experiment_id: experiment_nine.id, item: "corn syrup")


    instruction_one = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Place a penny on a table or desk.", order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Holding the eyedropper close to the surface of the penny,
      carefully squeeze water droplets onto the penny, one at a time. The droplets
      should pool up on the penny, creating a big droplet of water.
      Get the students to count the drops.",
        order: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Stop squeezing when the droplet on the penny breaks up and
       overflows. The count is the number of drops that the penny could hold
       before the one that caused the penny to overflow.",
        order: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Wipe off the penny or use a new one.",
        order: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_nine.id,
      information: "As before, gradually add drops of oil or syrup to the
      surface of the penny using the eyedropper. Count the drops.",
        order: 5)




  experiment_ten = Experiment.create!(user_id: user.id,
    description: "Hot Air balloon",
    lesson: "http://www.eballoon.org/balloon/how-it-works.html",
    youtube_link: "https://www.youtube.com/watch?v=sMeOv_Z-_ic", complete_time: 1,
    name: "Go up and away with this homemade hot air balloon")

    mat_one = Material.create!(experiment_id: experiment_ten.id, item: "Large lawn garbage bags")
    mat_two = Material.create!(experiment_id: experiment_ten.id, item: "dry cleaning bags")
    mat_three = Material.create!(experiment_id: experiment_ten.id, item: "straws")
    mat_four = Material.create!(experiment_id: experiment_ten.id, item: "coat hangers")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "string")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "scotch tape")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "hairdryer")


    instruction_one = Instruction.create!(experiment_id: experiment_ten.id,
      information: "Can you make a hot air balloon? It doesn't have to carry
      people, but it has to go high.", order: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_ten.id,
      information: "You can use garbage bags, dry cleaning or shopping bags,
      straws, coat hangers, string, and scotch tape. Use a hairdryer to create
      hot air. Before you start, make sure to get permission from an adult to use
      the hairdryer.",
        order: 2)

  experiment_eleven = Experiment.create!(user_id: user_two.id, name: "How To Make A Spark",
    description: " A lightning bolt is basically a dramatic display of static electricity
        in action. You see lightning when a spark of moving electrons races up or
        down between a cloud and the ground.",
    youtube_link: "https://www.youtube.com/watch?v=XtE0uXGMC-0", complete_time: 1)

  Material.create!(experiment_id: experiment_eleven.id, item: "pencil with eraser")
  Material.create!(experiment_id: experiment_eleven.id, item: "aluminum tray")
  Material.create!(experiment_id: experiment_eleven.id, item: "wool cloth")

  Instruction.create!(experiment_id: experiment_eleven.id,
      information: "Stick a pushpin through the center of the aluminum tray
          then stuck the pencil eraser to the pushpin.",
      order_number: 1)
  Instruction.create!(experiment_id: experiment_eleven.id,
      information: "Vigorously rub the wool on the Styrofoam tray for two minutes.
          It really takes two solid minutes!",
      order_number: 2)
  Instruction.create!(experiment_id: experiment_eleven.id,
      information: "Finally, picke up the aluminum tray using the pencil handle
          and set it on the Styrofoam plate.",
      order_number: 3)
