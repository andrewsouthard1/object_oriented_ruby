class VHS < StoreFront::Movie
  def initialize(input_options)
    super
    @on_shelf = input_options[:on_shelf]
    @price = input_options[:price]
    @region = input_options[:region]
  end

  def rewind_tape
    "Rewinding tape"
  end
end