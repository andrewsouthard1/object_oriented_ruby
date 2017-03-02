require './movie.rb'

class DVD < StoreFront::Movie
  attr_reader :on_shelf, :price, :region

  def initialize(input_options)
    super
    @on_shelf = input_options[:on_shelf]
    @price = input_options[:price]
    @region = input_options[:region]
  end
end
