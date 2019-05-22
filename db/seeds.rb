origin_list = [
  [ "Syria", 6308619 ],
  [ "Afghanistan", 2624225 ],
  [ "South Sudan", 2439868 ],
  [ "Myanmar", 1156732 ],
  [ "Somalia", 986356 ],
  [ "Sudan", 694506 ],
  [ "Congo", 620775 ],
  [ "Central African Republic", 545498 ],
  [ "Eritrea", 486169 ],
  [ "Burundi", 439280 ]
]

origin_list.each do |name, population|
  Origin.create( name: name, population: population )
end

# Origin.create(name: "Syria")
# Origin.create(name: "Afghanistan")
# Origin.create(name: "South Sudan")
# Origin.create(name: "Myanmar")
# Origin.create(name: "Somalia")
# Origin.create(name: "Sudan")
# Origin.create(name: "Congo")
# Origin.create(name: "Central African Republic")
# Origin.create(name: "Eritrea")
# Origin.create(name: "Burundi")

destination_list = [
  [ "Turkey", 3480310 ],
  [ "Jordan", 2896162 ],
  [ "West Bank & Gaza", 2213963 ],
  [ "Lebanon", 1468137 ],
  [ "Pakistan", 1393132 ],
  [ "Uganda", 1350495 ],
  [ "Iran", 979485 ],
  [ "Germany", 970302 ],
  [ "Bangladesh", 932209 ],
  [ "Ethiopia", 906585 ]
]

destination_list.each do |name, population|
  Destination.create( name: name, population: population )
end

# Destination.create(name: "Turkey")
# Destination.create(name: "Jordan")
# Destination.create(name: "West Bank & Gaza")
# Destination.create(name: "Lebanon")
# Destination.create(name: "Pakistan")
# Destination.create(name: "Uganda")
# Destination.create(name: "Iran")
# Destination.create(name: "Germany")
# Destination.create(name: "Bangladesh")
# Destination.create(name: "Ethiopia")

# create table sample ( country char(3), year char(4), pop_in int, pop_out int);
# insert into sample values (‘CN’, ‘2012’, 3234234234, 32342342344);
