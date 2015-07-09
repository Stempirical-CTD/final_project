# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: "user@userone.com", username: "userone", password: "password")
user_two = User.create!(email: "user@usertwo.com", username: "usertwo", password: "password")

experiment_fifteen = Experiment.create!(user_id: user_two.id, name: "Yeast",
    description: "Does yeast seem alive to you? Well, it is. It just needs warmth
        and sugar to become active. Yeasts are living things that are so small only have
        one cell. They can't make their own food. So, if you don't give them food,
        they don't become active. It's almost like they're asleep. If you make it warm
        and give them some food they become active.",
    youtube_link: "https://www.youtube.com/watch?v=odxvp-3nSw4", complete_time: 1.5)

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
    youtube_link: "https://www.youtube.com/watch?v=qz9hkWhZfRM", complete_time: 1.5)

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
    youtube_link: "https://www.youtube.com/watch?v=m408EZTGD64", complete_time: 2)

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
    youtube_link: "https://www.youtube.com/watch?v=-w-GoSJpvdw", complete_time: 0.5)

  Material.create!(experiment_id: experiment_eighteen.id, item: "2 inflated
      balloons with string attached")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Your hair")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Aluminium can")
  Material.create!(experiment_id: experiment_eighteen.id, item: "Woolen fabric")

  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Rub the 2 balloons one by one against the woolen fabric, then
        try moving the balloons together, do they want to or are they unattracted
        to each other?",
    order_number: 1)
  Instruction.create!(experiment_id: experiment_seventeen.id,
    information: "Rub 1 of the balloons back and forth on your hair then slowly
        it pull it away, ask someone nearby what they can see or if there's nobody
        else around try looking in a mirror.",
    order_number: 2)
  Instruction.create!(experiment_id: experiment_seventeen.id,
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
    youtube_link: "https://www.youtube.com/watch?v=xZJmz_tF4NU", complete_time: 2)

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
        that they form a border around the cooking area. It may be helpful to also
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

# Concept.create!(name: "Solar")#solar_oven,
# Concept.create!(name: "Water")#Soap Powered Boat
# ConceptRelationship.create!(parent_id: "#{experiment_nineteen.id}", child_id: "#{experiment_sixteen.id}")#solar_oven, Soap Powered Boat

# (parent_id: experiment_sixteen.id, child_id: experiment_eighteen.id)#Soap Powered Boat
# Concept.create!(name: "Electricity")
# (parent_id: experiment_eighteen.id, child_id: ) #  Static Electricity
