### A. Given the following data structure:

# lines = ['St Enoch', 'Buchanan St', 'Cowcaddens', 'St Georges X', 'Kelvinbridge', 'Hillhead', 'Kelvinhall', 'Partick', 'Govan', 'Ibrox', 'Cessnock', 'Kinning Park', 'Shields Road']

# 1. Work out how many stops there are in the array
# => lines.count()

# 2. Return 'Cowcaddens' from the array
# => lines[2]

# 3. How many ways can we return 'St Enoch' from the array?
# => 2 ways =>
# => lines[0]
# => lines[-13]

# 4. Work out the index position of 'Partick'
# => lines.index("Partick")

# 5. Add 'Bridge St' to the start of the array
# => lines.pop("Bridge St")

# 6. Add 'West St' to the end of the array
# => lines.push("West St")

# 7. Remove 'Kelvinbridge' from the array using it's name
# => lines.delete("Kelvinbridge")

# 8. Delete 'Cessnock' from the array by index
# => lines.delete_at(10)

# 9. Reverse the positions of the stops in the array
# => lines.reverse

# 10. Print out all the stops using a for loop
# => for lines in lines 
# =>   puts lines
# => end

### B. Given the following data structure:

# my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?
# => my_hash.fetch(1)

# 2. How would you return the string `"Two"`?
# => puts my_hash[:two]

# 3. How would you return the number `2`?
# => puts my_hash.fetch("two")

# 4. How would you add `{3 => "Three"}` to the hash?
# => my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2, 3 => "Three"}
# => my_hash.store(3, "Three")

# 5. How would you add `{:four => 4}` to the hash?
# => my_hash[:four] = 4


### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# => users["Jonathan"][:twitter]

# 2. Return Erik's hometown
# => users["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers
# => users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
# => users["Avril"][:pets]["colin"]

# 5. Return the smallest of Erik's favorite numbers

# 6. Add the number `7` to Erik's favorite numbers
# => users["Erik"][:favourite_numbers]=[7, 8, 12, 24]

# 7. Change Erik's hometown to Edinburgh
# => ["Erik"][:home_town]="Edinburgh"

# 8. Add a pet dog to Erik called "Fluffy"
# => users["Erik"][:pets] = ["Fluffy" => :dog]
# but this only replaces the rest of the pets with fluffy the dog
# => users["Erik"][:pets] = ["nemo" => :fish,
#       "kevin" => :fish,
#       "spike" => :dog,
#       "rupert" => :parrot,
#       "Fluffy" => :dog]
# this does add all the pets including the new one but there must be a way of only adding the new one without listing all the others?.


# 9. Add yourself to the users hash
# => users = {
#   "Jonathan" => {
#     :twitter => "jonnyt",
#     :favourite_numbers => [12, 42, 75, 12, 5],
#     :home_town => "Stirling",
#     :pets => {
#       "fluffy" => :cat,
#       "fido" => :dog,
#       "spike" => :dog
#     }
#   },
#   "Erik" => {
#     :twitter => "eriksf",
#     :favourite_numbers => [8, 12, 24],
#     :home_town => "Linithgow",
#     :pets => {
#       "nemo" => :fish,
#       "kevin" => :fish,
#       "spike" => :dog,
#       "rupert" => :parrot
#     }
#   },
#   "Avril" => {
#     :twitter => "bridgpally",
#     :favourite_numbers => [12, 14, 85, 88],
#     :home_town => "Dunbar",
#     :pets => {
#       "colin" => :snake
#     }
#   },
#   "David" => {
#     :twitter => "tweet",
#     :favourite_numbers => [07, 13, 81, 17],
#     :home_town => "Glasgow",
#     :pets => {
#       "Ralf" => :dog,
#       "Topsy" => :cat,
#     }
#       }
#       }
# => again having to re-list everything, need a shorter way!
