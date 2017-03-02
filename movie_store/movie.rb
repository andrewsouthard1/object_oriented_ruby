module StoreFront
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
end
