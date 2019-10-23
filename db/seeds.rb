puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Fu',
    address:      '4455 Paradise Rd, Las Vegas, NV 89169, United States',
    category:     'chinese',
    phone_number: '+1 702-522-8188'

  },
  {
    name:         'Carbone',
    address:      '3730 S Las Vegas Blvd, Las Vegas, NV 89109, United States',
    category:     'italian',
    phone_number: '+1 877-230-2742'
  },
  {
    name:         'Mon Ami Gabi',
    address:      ' 3655 S Las Vegas Blvd, Las Vegas, NV 89109, United States',
    category:     'french',
    phone_number: '+1 702-522-8188'

  },
  {
    name:         'Yellow Tail Japanese',
    address:      '3600 S Las Vegas Blvd, Las Vegas, NV 89109, United States',
    category:     'japanese',
    phone_number: '+1 702-693-8865'
  },
  {
    name:         "Maggiano's Little Italy",
    address:      '3200 S Las Vegas Blvd, Las Vegas, NV 89109, United States',
    category:     'italian',
    phone_number: '+1 702-693-8822'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
