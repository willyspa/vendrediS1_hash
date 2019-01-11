#test hash




states =  {

'Oregon'=>'OR',
'Florida'=>'FL',
'California'=>'CA',
'Newyork'=>'NY',
'Michigan'=>'MI',


}

cities  = {

  'CA' => 'SanFrancisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville',
}

cities['NY'] = 'Newyork'
cities['OR'] = 'Portland'

puts "-" * 10

puts "newyork state has #{cities['NY']}"
puts "oregon state has #{cities['OR']}"

puts "-" *10

puts "the abrevation of new york is #{states['Newyork']}"
puts "the abrevation of oregon is #{states['Oregon']}"

puts "-"*10

puts "newyork has #{cities[states['Newyork']]}"
puts "oregon has #{cities[states['Oregon']]}"

puts "-"*10

states.each do |states,abbrev|
  puts "the state:#{states} abbrevation:#{abbrev}"
end

puts "-"*10

cities.each do |abbrev,city|
  puts "le code postale de #{city} est:#{abbrev }"
end

puts "-"*10

states.each do |state,abbrev|
  city= cities[abbrev]
  puts "l'abbrevation de #{state} est:#{abbrev} et contient #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
