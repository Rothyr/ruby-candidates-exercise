# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

puts sorted_by_experience


# puts experienced? ({:id=>15,
#     :years_of_experience=>10,
#     :github_points=>400,
#     :languages=>["JavaScript", "Ruby"],
#     :age=>16})