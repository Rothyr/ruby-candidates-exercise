# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == candidate
      puts candidate
    end
  end
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def qualified_candidates
  @candidates.select do |candidate|
    experienced?(candidate) && github_points?(candidate) && language_knowledge?(candidate) && date_applied?(candidate) && age?(candidate)
  end
end

# More methods will go below

def github_points?(candidate)
  candidate[:github_points] >= 100
end

def language_knowledge?(candidate)
  candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
end

def date_applied?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

def age?(candidate)
  candidate[:age] > 17
end

def sorted_by_experience
  @candidates.sort_by { |candidate| [ -candidate[:years_of_experience], -candidate[:github_points] ] }
end