origin_list = [
  [ "Syria", 6309000 ],
  [ "Afghanistan", 2624000 ],
  [ "South Sudan", 2440000 ],
  [ "Myanmar", 1157000 ],
  [ "Somalia", 986000 ],
  [ "Sudan", 694000 ],
  [ "Congo", 621000 ],
  [ "Central African Republic", 546000 ],
  [ "Eritrea", 486000 ],
  [ "Burundi", 439000 ]
]

origin_list.each do |name, population|
  Origin.create( name: name, population: population )
end


destination_list = [
  [ "Turkey", 3115000 ],
  [ "Jordan", 2929000 ],
  [ "Palestinian Terrirories", 2155000 ],
  [ "Lebanon", 1559000 ],
  [ "Pakistan", 1357000 ],
  [ "Germany", 1257000 ],
  [ "Uganda", 1163000 ],
  [ "Iran", 978000 ],
  [ "USA", 816000 ],
  [ "Ethiopia", 794000 ]
]

destination_list.each do |name, population|
  Destination.create( name: name, population: population )
end
