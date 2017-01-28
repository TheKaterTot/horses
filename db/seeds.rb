require './app/models/horse.rb'
require './app/models/jockey.rb'
require './app/models/breed.rb'

Breed.destroy_all
Horse.destroy_all
Jockey.destroy_all

dave = Jockey.create(name: "Dave")
suzy = Jockey.create(name: "Suzy")

big = Breed.create(name: "Big")

big.horses.create(name: "Freddie", age: 3, total_winnings: 2, jockey_id: dave.id)

dave.horses.create(name: "Penelope", age: 29, total_winnings: 34000)
suzy.horses.create(name: "Penelope", age: 39, total_winnings: 500)
dave.horses.create(name: "Paulo", age: 45, total_winnings: 45000)
dave.horses.create(name: "Pepe", age: 39, total_winnings: 1000000)
suzy.horses.create(name: "Pete", age: 55, total_winnings: 4000)
suzy.horses.create(name: "Paige", age: 20, total_winnings: 78000)
suzy.horses.create(name: "Peyton", age: 95, total_winnings: 898344)
suzy.horses.create(name: "Patricia", age: 49, total_winnings: 78000)
suzy.horses.create(name: "Patricia", age: 49, total_winnings: 8978000)
suzy.horses.create(name: "Picasso", age: 15, total_winnings: 78000)
