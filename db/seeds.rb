

user = User.create!(email: "user@userone.com", username: "userone", password: "password")
user_two = User.create!(email: "user@usertwo.com", username: "usertwo", password: "password")


experiment_one = Experiment.create!(user_id: user.id,
  description: "This experiment demonstrates that water molecules move
  at different speeds depending on the water temperature.",
  youtube_link: "https://www.youtube.com/watch?v=iTbEmvdzvxg", complete_time: 1, name: "Colored Water",
  age: 1)

  mat_one = Material.create!(experiment_id: experiment_one.id, item: "Three clear drinking glasses")
  mat_two = Material.create!(experiment_id: experiment_one.id, item: "Hot water")
  mat_three = Material.create!(experiment_id: experiment_one.id, item:
    "Dark colored food dye (red, blue or green are best).")

  Instruction.create!(experiment_id: experiment_one.id,
    information:"The three drinking glasses each must contain water at
      different temperatures. One needs to be cold, the second room temperature
      (straight from the tap is fine) and the third needs to be very hot.",
      order_number: 1)
  Instruction.create!(experiment_id: experiment_one.id,
    information: "Place all three glasses of water next to each other on a table.
        Wait until the water in all three glasses appears still.", order_number: 2)
  Instruction.create!(experiment_id: experiment_one.id,
    information: "Then, as quickly as possible, place two drops of the food dye
        into each glass. For the best effect, the dye should be added to the cold
        glass first, then the room temperature glass and last to the hot water glass.
        It is also best to add the food dye with minimal splashing so that the food
        dye entering the water is a minimal source of disturbance.", order_number: 3)

experiment_two = Experiment.create!(user_id: user.id, description: "This colorful experiment
  explores the chemical bonds in milk.",
  youtube_link: "https://www.youtube.com/watch?v=rqQSlEViNpk", complete_time: 1,
  name: "Magic Milk", age: 2)

  mat_one = Material.create!(experiment_id: experiment_two.id, item: "Milk (whole or 2%)")
  mat_two = Material.create!(experiment_id: experiment_two.id, item: "Dinner plate")
  mat_three = Material.create!(experiment_id: experiment_two.id, item: "Food coloring (red, yellow, green, blue)")
  mat_four = Material.create!(experiment_id: experiment_two.id, item: "Dish-washing soap (Dawn brand works well)")
  mat_five = Material.create!(experiment_id: experiment_two.id, item: "Cotton swabs")

  instruction_one = Instruction.create!(experiment_id: experiment_two.id,
        information: "Pour enough milk in the dinner plate to completely cover
          the bottom to the depth of about 1/4 inch. Allow the milk to settle.",
          order_number: 1)
  instruction_two = Instruction.create!(experiment_id: experiment_two.id,
        information: "Add one drop of each of the four colors of food coloring
          - red, yellow, blue, and green - to the milk. Keep the drops close
          together in the center of the plate of milk.",
          order_number: 2)
  instruction_three = Instruction.create!(experiment_id: experiment_two.id,
        information: "Find a clean cotton swab for the next part of the experiment.
           Predict what will happen when you touch the tip of the cotton swab
           to the center of the milk. It's important not to stir the mix.
           Just touch it with the tip of the cotton swab. Go ahead and try it.
           Did anything happen?",
          order_number: 3)
  instruction_four = Instruction.create!(experiment_id: experiment_two.id,
        information: "Now place a drop of liquid dish soap on the other end
          of the cotton swab. Place the soapy end of the cotton swab back in the
          middle of the milk and hold it there for 10 to 15 seconds.
          Look at that burst of color! It's like the 4th of July in a bowl of milk!",
          order_number: 4)
  instruction_five = Instruction.create!(experiment_id: experiment_two.id,
        information: "Add another drop of soap to the tip of the cotton swab
        and try it again. Experiment with placing the cotton swab at different
        places in the milk. Notice that the colors in the milk continue to move
        even when the cotton swab is removed. What makes the food coloring
        in the milk move?",
          order_number: 5)

  experiment_three = Experiment.create!(user_id: user.id,
    description: "Watch old pennies turn bright and shiny right before your eyes!",
    youtube_link: "https://www.youtube.com/watch?v=LYAC7lYC9xY", complete_time: 1,
    name: "Penny Cleaner", age: 3)

    mat_one = Material.create!(experiment_id: experiment_three.id, item: "  20 dull, dirty pennies")
    mat_two = Material.create!(experiment_id: experiment_three.id, item: "1/4 cup white vinegar")
    mat_three = Material.create!(experiment_id: experiment_three.id, item: "1 teaspoon salt")
    mat_four = Material.create!(experiment_id: experiment_three.id, item: "A clear, shallow bowl (not metal)")
    mat_five = Material.create!(experiment_id: experiment_three.id, item: "Paper towels")

    instruction_one = Instruction.create!(experiment_id: experiment_three.id,
      information: "Put the salt and vinegar into the bowl and stir until it dissolves.",
      order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_three.id,
      information: "Put the pennies into the bowl for about 5 minutes. Watch them
          when they first go in. What do you see?",
      order_number: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_three.id,
      information: "Take half the pennies out and place them on a paper towel.",
        order_number: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_three.id,
      information: "Take the second half out and rinse them off very well.
        Place them on a paper towel and mark it as being “rinsed.”",
        order_number: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_three.id,
        information: "Wait about an hour and then check back on your two piles.
         What differences does your child see between the two? Record the
         differences and make some guesses about why they are different.
         The rinsed pennies should be bright and look brand new.",
          order_number: 5)

  experiment_four = Experiment.create!(user_id: user.id,
    description: "Use materials in your pantry to build a balloon inflater.",
    youtube_link: "https://www.youtube.com/watch?v=t--PRg1kd8g", complete_time: 1,
    name: "Fizz-Inflator", age: 2)

    mat_one = Material.create!(experiment_id: experiment_four.id, item: "One small empty plastic soda or water bottle")
    mat_two = Material.create!(experiment_id: experiment_four.id, item: "1/2 cup of vinegar")
    mat_three = Material.create!(experiment_id: experiment_four.id, item: "Small balloon")
    mat_four = Material.create!(experiment_id: experiment_four.id, item: "Baking soda")
    mat_five = Material.create!(experiment_id: experiment_four.id, item: "Funnel or piece of paper")

    instruction_one = Instruction.create!(experiment_id: experiment_four.id,
      information: "Carefully pour the vinegar into the bottle.",
        order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_four.id,
      information: "This is the tricky part: Loosen up the balloon by stretching
      it a few times and then use the funnel to fill it a bit more than half
      way with baking soda. If you don’t have a funnel you can make one using
      the paper and some tape.",
        order_number: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_four.id,
      information: "Now carefully put the neck of the balloon all the way over
      the neck of the bottle without letting any baking soda into the bottle.",
        order_number: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_four.id,
      information: "Ready? Lift the balloon up so that the baking soda falls
      from the balloon into the bottle and mixes with the vinegar.
      Watch the fizz-inflator at work!",
        order_number: 4)

  experiment_six = Experiment.create!(user_id: user.id,
    description: "Can you build a tool to pick up a sock without touching them? Sure you can!",
    youtube_link: "https://www.youtube.com/watch?v=sCoqrc9LAxg", complete_time: 1,
    name: "Machanical Grabber", age:4)

    mat_one = Material.create!(experiment_id: experiment_six.id, item: "Wire clothes hanger
     (Use the type with a cardboard tube attached to open-ended wire.)")
    mat_two = Material.create!(experiment_id: experiment_six.id, item: "String")
    mat_three = Material.create!(experiment_id: experiment_six.id, item: "Rubber bands")
    mat_four = Material.create!(experiment_id: experiment_six.id, item: "Duct tape")
    mat_five = Material.create!(experiment_id: experiment_six.id, item: "PVC plastic pipe (1 inch in
      diameter and 3 feet long)")
    mat_six = Material.create!(experiment_id: experiment_six.id, item: "Wooden
      dowel (1/4 inch in diameter and at least 3 feet long) (You can find duct
      tape, PVC plastic pipe and wooden dowels at a hardware store.)")

    instruction_one = Instruction.create!(experiment_id: experiment_six.id,
      information: "Remove the cardboard tube from the hanger. Reshape the two
      sides to form the “hands” of the grabber.", order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_six.id,
      information: "Straighten out the hooked part of the hanger
      (the part that hangs over the rod in your closet).",
        order_number: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_six.id,
      information: "Attach a dowel to the straightened hanger with duct tape.
       Place the straightened hanger and dowel
      into one end of the PVC plastic pipe.The “hands”
      of the hanger should poke out of one end
      of the pipe and the dowel should poke
      out of the other.",
        order_number: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_six.id,
      information: "Add rubber bands or duct tape to each
        of the “hands” of the hanger.",
        order_number: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_six.id,
      information: "Pull on the dowel to make the “hands”
        of the grabber come together and push on
        the dowel to release them.",
        order_number: 5)
    instruction_six = Instruction.create!(experiment_id: experiment_six.id,
      information: "Try it out. Can you pick up a piece of paper? A soda
        can? A sock? How can you improve your grabber? ",
        order_number: 6)

  experiment_seven = Experiment.create!(user_id: user.id,
    description: "Arrows Optical Illusion",
    youtube_link: "https://www.youtube.com/watch?v=eN-DB_XuhRs", complete_time: 1,
    name: "Arrows Optical Illusion", age:3)

    mat_one = Material.create!(experiment_id: experiment_seven.id, item: "Pipe cleaners")
    mat_two = Material.create!(experiment_id: experiment_seven.id, item: "scissors")

    instruction_one = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Take two pipe cleaners that are the same length and the same
      color. If they aren't the same, the optical illusion won't work.", order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Cut in half two other pipe cleaners that are a different color.
      These will be the ends of your arrows.",
        order_number: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Wrap the end of one long pipe cleaner around the middle of
      one short pipe cleaner. Then bend the short one in half so it looks like
      an arrow. Do the same thing with the other end.",
        order_number: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Then do it again with the other pipe cleaner, but this time,
      turn the arrows the other way.",
        order_number: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_seven.id,
      information: "Move your pipe cleaners apart... Now you have an optical
      illusion! Even though the two long pipe cleaners are the same length, one
      of them should look shorter than the other.",
        order_number: 5)

    experiment_eight = Experiment.create!(user_id: user.id,
      description: "The FLoating Egg",
      youtube_link: "https://www.youtube.com/watch?v=gfuLoaEYKis", complete_time: 1,
      name: "The FLoating Egg", age:2)

      mat_one = Material.create!(experiment_id: experiment_eight.id, item: "Two dirnking glasses")
      mat_two = Material.create!(experiment_id: experiment_eight.id, item: "Two raw eggs")
      mat_three = Material.create!(experiment_id: experiment_eight.id, item: "Table salt")
      mat_four = Material.create!(experiment_id: experiment_eight.id, item: "Spoon")

      instruction_one = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill one of the drinking glasses almost to the top with
        plain tap water.", order_number: 1)
      instruction_two = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Gently drop one of the eggs into the water-filled glass.
        It sinks right to the bottom!",
          order_number: 2)
      instruction_three = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill the second drinking glass half-full with water.",
          order_number: 3)
      instruction_four = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Add four tablespoons of table salt to the water, and stir.",
          order_number: 4)
      instruction_five = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Fill the rest of the cup with water, almost to the top.",
          order_number: 5)
      instruction_six = Instruction.create!(experiment_id: experiment_eight.id,
        information: "Gently place the second egg into the salt water solution… it floats!",
          order_number: 6)




  experiment_nine = Experiment.create!(user_id: user.id,
    description: "Drops on a Penny",
    youtube_link: "https://www.youtube.com/watch?v=XQbr9Ic8_hA", complete_time: 1,
    name: "Drops on a Penny", age:3)

    mat_one = Material.create!(experiment_id: experiment_nine.id, item: "A Penny")
    mat_two = Material.create!(experiment_id: experiment_nine.id, item: "An eyedropper")
    mat_three = Material.create!(experiment_id: experiment_nine.id, item: "Water")
    mat_four = Material.create!(experiment_id: experiment_nine.id, item: "mineral/baby/olive oil")
    mat_five = Material.create!(experiment_id: experiment_nine.id, item: "corn syrup")


    instruction_one = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Place a penny on a table or desk.", order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Holding the eyedropper close to the surface of the penny,
      carefully squeeze water droplets onto the penny, one at a time. The droplets
      should pool up on the penny, creating a big droplet of water.
      Get the students to count the drops.",
        order_number: 2)
    instruction_three = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Stop squeezing when the droplet on the penny breaks up and
       overflows. The count is the number of drops that the penny could hold
       before the one that caused the penny to overflow.",
        order_number: 3)
    instruction_four = Instruction.create!(experiment_id: experiment_nine.id,
      information: "Wipe off the penny or use a new one.",
        order_number: 4)
    instruction_five = Instruction.create!(experiment_id: experiment_nine.id,
      information: "As before, gradually add drops of oil or syrup to the
      surface of the penny using the eyedropper. Count the drops.",
        order_number: 5)



experiment_five = Experiment.create!(user_id: user.id,
  description: "How do scientists take DNA out of a living thing? It's not
  that hard—there are lots of ways to do it!",
  youtube_link: "https://www.youtube.com/watch?v=67KXatgoNKs", complete_time: 1.5,
  name: "Strawberry DNA", age: 4)
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
       order_number: 1)
   instruction_two = Instruction.create!(experiment_id: experiment_five.id,
     information: "Measure 90 mL of water into a beaker or similar container.",
       order_number: 2)
   instruction_three = Instruction.create!(experiment_id: experiment_five.id,
     information: "Pour 10 mL of dish soap into the 90 mL of water.",
       order_number: 3)
   instruction_four = Instruction.create!(experiment_id: experiment_five.id,
     information: "Add 1/4 tsp of salt to the liquid in the beaker.",
       order_number: 4)
   instruction_five = Instruction.create!(experiment_id: experiment_five.id,
     information: "Mix it all up and now you've got a homemade extraction solution!",
       order_number: 5)
   instruction_six = Instruction.create!(experiment_id: experiment_five.id,
     information: "Place one strawberry in a plastic zipper-lock bag",
       order_number: 6)
   instruction_seven = Instruction.create!(experiment_id: experiment_five.id,
     information: "Pour your extraction solution into the bag with the strawberry.",
       order_number: 7)
   instruction_eight = Instruction.create!(experiment_id: experiment_five.id,
     information: "Remove as much air from the bag as possible and seal it.",
       order_number: 8)
   instruction_nine = Instruction.create!(experiment_id: experiment_five.id,
     information: "Use your hands to mash, smash, and mush the strawberry
     inside of the bag until there are no large pieces remaining.",
       order_number: 9)
   instruction_ten = Instruction.create!(experiment_id: experiment_five.id,
     information: "Pour the resulting strawberry and extraction solution
     mixture through a sieve and into a beaker or similar container.",
       order_number: 10)
   instruction_eleven = Instruction.create!(experiment_id: experiment_five.id,
    information: "Use a spoon to press the strained bits of strawberry against
    the sieve, forcing even more of the solution into the beaker.",
      order_number: 11)
   instruction_twelve = Instruction.create!(experiment_id: experiment_five.id,
     information: "From the container it is currently in, transfer the solution
     into a smaller beaker or similar container that holds around 50-100 mL of fluid.",
      order_number: 12)
   instruction_thirteen = Instruction.create!(experiment_id: experiment_five.id,
     information: "Add 5 mL of your chilled isopropyl alcohol to the solution
     and hold the mixture at eye level.",
      order_number: 13)
   instruction_fourteen = Instruction.create!(experiment_id: experiment_five.id,
     information: "Can you see how there is a separation of white 'stuff'
      atop the rest of the solution? That's the DNA of the strawberry.",
       order_number: 14)
   instruction_fifteen = Instruction.create!(experiment_id: experiment_five.id,
     information: "Gently remove the DNA from the solution using tweezers.",
      order_number: 15)

  experiment_ten = Experiment.create!(user_id: user.id,
    description: "Go up and away with this homemade hot air balloon",
    youtube_link: "https://www.youtube.com/watch?v=sMeOv_Z-_ic", complete_time: 1,
    name: "Hot Air Balloon", age:4)

    mat_one = Material.create!(experiment_id: experiment_ten.id, item: "Large lawn garbage bags")
    mat_two = Material.create!(experiment_id: experiment_ten.id, item: "dry cleaning bags")
    mat_three = Material.create!(experiment_id: experiment_ten.id, item: "straws")
    mat_four = Material.create!(experiment_id: experiment_ten.id, item: "coat hangers")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "string")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "scotch tape")
    mat_five = Material.create!(experiment_id: experiment_ten.id, item: "hairdryer")


    instruction_one = Instruction.create!(experiment_id: experiment_ten.id,
      information: "Can you make a hot air balloon? It doesn't have to carry
      people, but it has to go high.", order_number: 1)
    instruction_two = Instruction.create!(experiment_id: experiment_ten.id,
      information: "You can use garbage bags, dry cleaning or shopping bags,
      straws, coat hangers, string, and scotch tape. Use a hairdryer to create
      hot air. Before you start, make sure to get permission from an adult to use
      the hairdryer.",
        order_number: 2)

  experiment_eleven = Experiment.create!(user_id: user_two.id, name: "How To Make A Spark",
    description: " A lightning bolt is basically a dramatic display of static electricity
        in action. You see lightning when a spark of moving electrons races up or
        down between a cloud and the ground.",
    youtube_link: "https://www.youtube.com/watch?v=XtE0uXGMC-0", complete_time: 1, age:4)

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

  experiment_twelve = Experiment.create!(user_id: user_two.id, name: "How Plants Absorb Water",
    description: "Used food coloring and cabbage leaves to show how
    plants absorb water (and nutrients) up through their stems. You can also do this
    experiment with white flowers too!",
    youtube_link: "https://www.youtube.com/watch?v=x9ma86cASmg", complete_time: 1,
    age: 2)

  Material.create!(experiment_id: experiment_twelve.id, item: "Cabbage leaves")
  Material.create!(experiment_id: experiment_twelve.id, item: "Food colouring")
  Material.create!(experiment_id: experiment_twelve.id, item: "Water")
  Material.create!(experiment_id: experiment_twelve.id, item: "Jars")

  Instruction.create!(experiment_id: experiment_twelve.id,
      information: "First you will need to add some water to each jar.",
      order_number: 1)
  Instruction.create!(experiment_id: experiment_twelve.id,
      information: "Then add a different coloured food dye to each jar. Use
      about 10 drops per jar to make sure the water is nice and vibrant.",
      order_number: 2)
  Instruction.create!(experiment_id: experiment_twelve.id,
      information: "Add a separate cabbage leaf/flower to each jar.",
      order_number: 3)

  experiment_thirteen = Experiment.create!(user_id: user_two.id, name: "Weather You Can See",
    description: "When a rain cloud gets so full of water, the water will break
    through the cloud and start to fall to the ground.",
    youtube_link: "https://www.youtube.com/watch?v=pglbX1xtofE", complete_time: 1, age: 1)

  Material.create!(experiment_id: experiment_thirteen.id, item: "Clean jar")
  Material.create!(experiment_id: experiment_thirteen.id, item: "Water (any temperature)")
  Material.create!(experiment_id: experiment_thirteen.id, item: "Shaving cream")
  Material.create!(experiment_id: experiment_thirteen.id, item: "Cup of water with a little food coloring")
  Material.create!(experiment_id: experiment_thirteen.id, item: "Pipette (or soon)")
  Material.create!(experiment_id: experiment_thirteen.id, item: "Food coloring")

  Instruction.create!(experiment_id: experiment_thirteen.id,
      information: "Fill jar about 3/4 full of water.",
      order_number: 1)
  Instruction.create!(experiment_id: experiment_thirteen.id,
      information: "Spray shaving cream to cover top of water completely.",
      order_number: 2)
  Instruction.create!(experiment_id: experiment_thirteen.id,
      information: "Drip water on top of the shaving cream using pipette.",
      order_number: 3)
  Instruction.create!(experiment_id: experiment_thirteen.id,
      information: "Drip food coloring on top of the shaving cream the shaving cream.",
      order_number: 4)

experiment_fifteen = Experiment.create!(user_id: user_two.id, name: "Activating Yeast",
    description: "Does yeast seem alive to you? Well, it is. It just needs warmth
        and sugar to become active. Yeasts are living things that are so small only have
        one cell. They can't make their own food. So, if you don't give them food,
        they don't become active. It's almost like they're asleep. If you make it warm
        and give them some food they become active.",
    youtube_link: "https://www.youtube.com/watch?v=odxvp-3nSw4", complete_time: 1.5,
    age: 3)

  Material.create!(experiment_id: experiment_fifteen.id, item: "1 package of yeast")
  Material.create!(experiment_id: experiment_fifteen.id, item: "warm water")
  Material.create!(experiment_id: experiment_fifteen.id, item: "1 teaspoon sugar")
  Material.create!(experiment_id: experiment_fifteen.id, item: "spoons")
  Material.create!(experiment_id: experiment_fifteen.id, item: "large bowl")

  Instruction.create!(experiment_id: experiment_fifteen.id,
    information: "Pour one package of yeast in a large bowl.", order_number: 1)
  Instruction.create!(experiment_id: experiment_fifteen.id,
    information: "Add 1/4 cup of warm water and 1 teaspoon sugar.", order_number: 2)
  Instruction.create!(experiment_id: experiment_fifteen.id,
    information: "Now wait about 10 minutes. When you check it, you should see bubbles.",
      order_number: 3)

experiment_sixteen = Experiment.create!(user_id: user.id, name: "Soap Powered Boat",
    description: "Argh, ye landlubbers. Sail the soapy seas with this activity
        full of high and low surface tension.",
    youtube_link: "https://www.youtube.com/watch?v=qz9hkWhZfRM", complete_time: 1.5,
    age: 3)

  Material.create!(experiment_id: experiment_sixteen.id, item: "4 Styrofoam plates")
  Material.create!(experiment_id: experiment_sixteen.id, item: "2 Styrofoam bowls")
  Material.create!(experiment_id: experiment_sixteen.id, item: "2 Styrofoam cups")
  Material.create!(experiment_id: experiment_sixteen.id, item: "2 bendy straws")
  Material.create!(experiment_id: experiment_sixteen.id, item: "glue")
  Material.create!(experiment_id: experiment_sixteen.id, item: "water")
  Material.create!(experiment_id: experiment_sixteen.id, item: "liquid dish soap")
  Material.create!(experiment_id: experiment_sixteen.id, item: "inflatable wading
      pool or bathtub filled with water")

  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "To make a boat, glue two plates together face to face so that
        their top edges meet.", order_number: 1)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "Glue the bowl upside down on top of one of the plates", order_number: 2)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "Poke a hole near the bottom of the cup and glue the bottom
        of the cup to the bottom of the bowl.", order_number: 3)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "Put the short end of the bendy straw through the hole in the
        cup. The other end of the straw should point down.", order_number: 4)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "Make two boats. When the glue dries, decorate your boats with
        paint or markers.", order_number: 5)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "To make your boat move, just set it on the water, pour water
        into the cup and watch it go.", order_number: 6)
  Instruction.create!(experiment_id: experiment_sixteen.id,
    information: "Make an index card boat move throught the water using only
        diswashing soap. Mix xome liquid dishwashing soap with water and pur it
        into the cup on top of one boat. Pour plain water into the cup on the other
        boat.", order_number: 7)

experiment_seventeen = Experiment.create!(user_id: user_two.id, name: "Solar Still",
    description: "Water evaporates in the same way from lakes, rivers, and oceans.
        The water heats up, turns into a gas, and then condenses to fall back down
        as rain and.",
    youtube_link: "https://www.youtube.com/watch?v=m408EZTGD64", complete_time: 2,
    age: 4)

  Material.create!(experiment_id: experiment_seventeen.id, item: "large bowl")
  Material.create!(experiment_id: experiment_seventeen.id, item: "short glass or cup")
  Material.create!(experiment_id: experiment_seventeen.id, item: "tape")
  Material.create!(experiment_id: experiment_seventeen.id, item: "plastic wrap")
  Material.create!(experiment_id: experiment_seventeen.id, item: "small rock")
  Material.create!(experiment_id: experiment_seventeen.id, item: "pitcher of water")
  Material.create!(experiment_id: experiment_seventeen.id, item: "salt")
  Material.create!(experiment_id: experiment_seventeen.id, item: "long spoon for stirring")

  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "First make saltwater by adding salt to fresh water. Stir the
        water until the salt dissolves.", order_number: 1)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Now pour about two inches of saltwater in a large bowl.",
    order_number: 2)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Take an empty glass and put it in the bowl. The top of the glass
        should be shorter than the top of the bowl, but higher than the saltwater.",
    order_number: 3)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Put plastic wrap over the top of the bowl. You may need to use
        tape to make sure the seal is tight.",
    order_number: 4)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "The last step is to put something heavy right in the center of
        the plastic wrap, over the empty glass. That will weigh the plastic down
        and help you collect the water. Now you've made a solar still. It's called
        a still because it distills, or purifies, water.",
    order_number: 5)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Leave your still outside in the sun. Leave it alone for a few
        hours, or even a whole day. The longer you leave it out, the more water
        you'll collect.",
    order_number: 6)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "When you're ready to check your still, take the plastic wrap
        off and look at the water that's collected in the cup. Do you think it's
        salty or fresh? Taste it, or use a saltwater tester to find out!",
    order_number: 7)

experiment_eighteen = Experiment.create!(user_id: user.id, name: "Static Electricity",
    description: "They say opposites attract and that couldn't be truer with these
        fun static electricity experiments. Find out about positively and negatively
        charged particles using a few basic items, can you control if they will be
        attracted or unattracted to each other?",
    youtube_link: "https://www.youtube.com/watch?v=-w-GoSJpvdw", complete_time: 0.5,
    age: 4)

  Material.create!(experiment_id: experiment_eighteen.id, item: "2 inflated
      balloons with string attached")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Your hair")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Aluminium can")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Woolen fabric")

  Instruction.create!(experiment_id: experiment_eighteen.id,
    information: "Rub the 2 balloons one by one against the woolen fabric, then
        try moving the balloons together, do they want to or are they unattracted
        to each other?",
    order_number: 1)
  Instruction.create!(experiment_id: experiment_eighteen.id,
    information: "Rub 1 of the balloons back and forth on your hair then slowly
        it pull it away, ask someone nearby what they can see or if there's nobody
        else around try looking in a mirror.",
    order_number: 2)
  Instruction.create!(experiment_id: experiment_eighteen.id,
    information: "Put the aluminium can on its side on a table, after rubbing the
    balloon on your hair again hold the balloon close to the can and watch as it
    rolls towards it, slowly move the balloon away from the can and it will follow.",
    order_number: 3)

  experiment_nineteen = Experiment.create!(user_id: user_two.id, name: "Solar Oven",
    description: "Use the sun's energy to heat up a tasty treat with this simple
        solar oven! Have you ever heard the expression that it's so hot out you could
        fry an egg on the sidewalk? Have you ever wondered if it's true? Find out with
        this easy, fun, and delicious solar oven science project that uses only household
        items and a pizza box. Plus, learn about absorption, insulation, and the sun's energy.",
    youtube_link: "https://www.youtube.com/watch?v=xZJmz_tF4NU", complete_time: 2,
    age: 4)

  Material.create!(experiment_id: experiment_nineteen.id, item: "Cardboard pizza
      box (the kind delivered pizza comes in")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Box knife or scissors")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Aluminum foil")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Clear tape")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Plastic wrap
      (a heavy-duty or freezer zip lock bag will also work)")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Black construction paper")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Newspapers")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Ruler, or wooden spoon")
  Material.create!(experiment_id: experiment_nineteen.id, item: "Thermometer")

  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "Use a box knife or sharp scissors to cut a flap in the lid of
        the pizza box. Cut along three sides, leaving about an inch between the
        sides of the flap and the edges of the lid. Fold this flap out so that it
        stands up when the box lid is closed.",
    order_number: 1)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "Cover the inner side of the flap with aluminum foil so that it
        will reflect rays from the sun. To do this, tightly wrap foil around the
        flap, then tape it to the back, or outer side of the flap.",
    order_number: 2)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "Use clear plastic wrap to create an airtight window for sunlight
        to enter into the box. Do this by opening the box and taping a double layer
        of plastic wrap over the opening you made when you cut the flap in the lid.
        Leave about an inch of plastic overlap around the sides and tape each side
        down securely, sealing out air. If you use a plastic bag, cut out a square
        big enough to cover the opening, and tape one layer over the opening.",
    order_number: 3)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "Line the bottom of the box with black construction paper—black
        absorbs heat. The black surface is where your food will be set to cook. How
        much you need will depend on the size of the pizza box you're using to make
        your solar oven. ",
    order_number: 4)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "To insulate your oven so it holds in more heat, roll up sheets
        of newspaper and place them on the bottom of the box. Tape them down so
        that they form a border_number around the cooking area. It may be helpful to also
        tape the rolls closed first. The newspaper rolls should make it so that the
        lid can still close, but there is a seal inside of the box, so air cannot
        escape.",
    order_number: 5)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "The best hours to set up your solar oven are when the sun is high
        overhead—from 11 am to 3 pm. Take it outside to a sunny spot and adjust the
        flap until the most sunlight possible is reflecting off the aluminum foil
        and onto the plastic-covered window. Use a ruler to prop the flap at the
        right angle. You may want to angle the entire box by using a rolled up towel.",
    order_number: 6)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "You can make toast by buttering a slice of bread then letting
        the sun do the rest. Cooking a hot dog or making nachos with chips and cheese
          are also fun treats to make in your solar oven! It would also work great
          to heat up leftovers. So the paper at the bottom doesn't get dirty, put
          what you would like to cook on a clear plastic or glass plate. A pie plate
          would work well. Place the thermometer inside your oven before you close
          it, so you can check the temperature.",
    order_number: 7)
  Instruction.create!(experiment_id: experiment_nineteen.id,
    information: "To take food out of the oven, open up the lid of the pizza box,
    and using oven mitts or potholders, lift the glass dish out of the oven.",
    order_number: 8)

concept_one = Concept.create!(name: "Human Body",
description_link: "https://faculty.washington.edu/chudler/chvision.html",
video_link: "https://www.youtube.com/watch?v=B5LbmZG1DNM")

concept_two = Concept.create!(name: "Design & Build",
description_link: "http://whatisengineering.com/",
video_link: "https://www.youtube.com/watch?v=NUuWXqRJmns")

concept_three = Concept.create!(name: "Plants",
description_link: "https://en.wikipedia.org/wiki/Plant_genetics",
video_link: "https://www.youtube.com/watch?v=zwibgNGe4aY")

concept_four = Concept.create!(name: "Molecular Behavior",
description_link: "https://en.wikipedia.org/wiki/Brownian_motion",
video_link: "https://www.youtube.com/watch?v=4m5JnJBq2AU")

concept_five = Concept.create!(name: "Electricity",
description_link: "http://www.sciencemadesimple.com/static.html",
video_link: "https://www.youtube.com/watch?v=yc2-363MIQs")

concept_six = Concept.create!(name: "Liquids",
description_link: "https://en.wikipedia.org/wiki/Properties_of_water",
video_link: "https://www.youtube.com/watch?v=HVT3Y3_gHGg")

concept_seven = Concept.create!(name: "Gases",
description_link: "https://en.wikipedia.org/wiki/Gas",
video_link: "https://www.youtube.com/watch?v=GIPrsWuSkQc")

concept_eight = Concept.create!(name: "Water Cycle",
description_link: "https://simple.wikipedia.org/wiki/Water_cycle",
video_link: "https://www.youtube.com/watch?v=al-do-HGuIk")

concept_nine = Concept.create!(name: "Chemical Reactions",
description_link: "https://en.wikipedia.org/wiki/Chemical_reaction",
video_link: "http://chemistry.about.com/od/chemicalreactions/a/reactiontypes.htm")

concept_ten = Concept.create!(name: "Energy",
description_link:"https://en.wikipedia.org/wiki/Solar_energy",
video_link: "https://www.youtube.com/watch?v=GqtUWyDR1fg")

concept_eleven = Concept.create!(name: "Periodic Table",
description_link: "http://www.ehow.com/about_5133409_do-pennies-corrode.html",
video_link: "https://www.youtube.com/watch?v=uPkEGAHo78o")

#Human Body Relationships
ConceptRelationship.create!(parent_id: concept_one.id, child_id: concept_three.id)
ConceptRelationship.create!(parent_id: concept_one.id, child_id: concept_four.id)
ConceptRelationship.create!(parent_id: concept_one.id, child_id: concept_two.id)

#Molecular Behavior
ConceptRelationship.create!(parent_id: concept_four.id, child_id: concept_five.id)
ConceptRelationship.create!(parent_id: concept_four.id, child_id: concept_ten.id)
ConceptRelationship.create!(parent_id: concept_four.id, child_id: concept_nine.id)
ConceptRelationship.create!(parent_id: concept_four.id, child_id: concept_six.id)
ConceptRelationship.create!(parent_id: concept_four.id, child_id: concept_seven.id)

#liquids
ConceptRelationship.create!(parent_id: concept_six.id, child_id: concept_nine.id)
ConceptRelationship.create!(parent_id: concept_six.id, child_id: concept_eight.id)

#Gases
ConceptRelationship.create!(parent_id: concept_seven.id, child_id: concept_eight.id)

#Chemical Reactions
ConceptRelationship.create!(parent_id: concept_nine.id, child_id: concept_eleven.id)


experiment_one.concepts << concept_four #water color in cups
experiment_two.concepts << concept_nine #magic milk
experiment_three.concepts << concept_eleven #Cleaning pennies
experiment_four.concepts << concept_nine #inflate a balloon
experiment_five.concepts << concept_three #Strawberry DNA
experiment_six.concepts << concept_two #Mechanical Grabber
experiment_seven.concepts << concept_one #Arrows Optical Illusion
experiment_eight.concepts << concept_six #Floating Egg
experiment_nine.concepts << concept_six #Drops on a Penny
experiment_ten.concepts << concept_seven << concept_two #Hot Air Balloon
experiment_eleven.concepts << concept_five #Make a Spark
experiment_twelve.concepts << concept_three << concept_six #Plant absorbing water
experiment_thirteen.concepts << concept_six << concept_eight #rainclouds
experiment_fifteen.concepts << concept_nine #Yeast
experiment_sixteen.concepts << concept_nine #Soap Powered Boat
experiment_seventeen.concepts << concept_eight #Solar Still
experiment_eighteen.concepts << concept_five #Static Electricity
experiment_nineteen.concepts << concept_ten #Solar Oven
