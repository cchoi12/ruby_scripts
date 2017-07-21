class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end
end

k = Person.new("kay", 10)
m = Person.new("may", 11)
c = Person.new("can", 12)
p = Person.new("pop", 13)

people = ["kay", "may", "can", "pop"]

def sort_people(people, comparer)
  people.sort do |x, y|
    comparer.call(x) <=> comparer.call(y)
  end
end

grab_age = lambda do |person|
  person.age
end

sorted_people = sort_people(people, grab_age)
puts sorted_people.inspect
