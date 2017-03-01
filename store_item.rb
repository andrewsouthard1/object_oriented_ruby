# # new JS format of writing hashes with symbols as keys
# fight_club = {
#   title: "Fight Club",
#   year: 1999,
#   director: "David Fincher",
#   format: "DVD"
# }

# # older style of writing hashes with symbols as keys
# anchorman = {
#   :title => "Anchorman",
#   :year => 2009,
#   :director => "Adam McKay",
#   :format => "VHS"
# }

# # writing hashes with strings as keys
# gangs_of_new_york = {
#   "title" => "Gangs of New York",
#   "year" => 2001,
#   "director" => "Martin Scorsese",
#   "format" => "Laserdisc"
# }

# def print_movie_details(movie)
#   movie.each do |key, value|
#     p "#{key}: #{value}"
#   end
# end

=begin
Rewrite your store items using a class instead of a hash.
a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
=end
class Movie
  attr_reader :title, :year, :director

  def initialize(input_options)
    @title = input_options[:title]
    @year = input_options[:year]
    @director = input_options[:director]
  end

  def info
    "Title: #{title} Year: #{year} Director: #{director}"
  end
end

class DVD < Movie
  attr_reader :on_shelf, :price, :region

  def initialize(input_options)
    super
    @on_shelf = input_options[:on_shelf]
    @price = input_options[:price]
    @region = input_options[:region]
  end
end

the_dark_knight = Movie.new({:title => "The Dark Knight", :year => 2008, :director => "Chris Nolan"})
p the_dark_knight.info

conan_dvd = DVD.new(title: "Conan the Barbarian", year: 1980, director: "John Milios", on_shelf: true, price: 5.99, region: 1)
p conan_dvd.info
p conan_dvd.price
p conan_dvd.region





















