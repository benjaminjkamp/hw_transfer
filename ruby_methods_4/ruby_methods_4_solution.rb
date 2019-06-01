# Write the solutions to each ruby problem below:

# 1
def sort_by_age(people)
  

  people.sort { |first, second| first["age"] <=> second["age"] }

end

people = [
  {"name" => "Saron", "age" => 34},
  {"name" => "Majora", "age" => 28},
  {"name" => "Danilo", "age" => 45}
  
]
p sort_by_age(people)

# 2

def sort_by_age_then_name(people)

  by_name = people.sort { |first, second| first[:name] <=> second[:name] }
  by_name.sort { |first, second| first[:age] <=> second[:age] }


end

people = [
  {name: "bob", age: 15, gender: "male"},
  {name: "alice", age: 25, gender: "female"},
  {name: "bob", age: 56, gender: "male"},
  {name: "dave", age: 45, gender: "male"},
  {name: "alice", age: 56, gender: "female"},
  {name: "adam", age: 15, gender: "male"}
]

p sort_by_age_then_name(people)


# 3

def sort_by_rating(movies)

  movies = movies.sort { |a, b| b[:rating] <=> a[:rating] }
  movies.map { |movie| movie[:title] }
  
end


movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p sort_by_rating(movies)


# 4

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}
p haystack[:hay][3][:hay][:hay][1][:hay][2]


# 5

def missing_letter(string)
  
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet = alphabet.split(//)
  bob = []
  start = false

  alphabet.each do |letter|
    if start
      if string.end_with?(letter)
        bob << letter
        break
      end
      bob << letter
    end
    if string.start_with?(letter)
      bob << letter
      start = true
    end
  end
  
  if bob == string
    return nil
  else
    
  end


end

test1 = "opqrsuv" #=> "t"
test2 = "xyz" #=> nil

p missing_letter(test1)
p missing_letter(test2) == nil