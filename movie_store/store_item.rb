require './movie.rb'
require './dvd.rb'

the_dark_knight = StoreFront::Movie.new({:title => "The Dark Knight", :year => 2008, :director => "Chris Nolan"})
p the_dark_knight.info

conan_dvd = DVD.new(title: "Conan the Barbarian", year: 1980, director: "John Milios", on_shelf: true, price: 5.99, region: 1)
p conan_dvd.info
p conan_dvd.price
p conan_dvd.region





















