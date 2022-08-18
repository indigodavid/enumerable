require_relative 'enumerable/version'

module Enumerable
  class Error < StandardError; end
  
  class MyList
    @list = []

    def initialize (*elements)
      @list = elements
    end

    def all?
      # all method
      
    end

    def any?
      # any method
      
    end

    def filter
      # filter method
      
    end
  end

  # Create our list
  list = MyList.new(1, 2, 3, 4)
  # => #<MyList: @list=[1, 2, 3, 4]>

  # Test #all?
  list.all? {|e| e < 5}
  # => true
  list.all? {|e| e > 5}
  # => false

  # Test #any?
  list.any? {|e| e == 2}
  # => true
  list.any? {|e| e == 5}
  # => false

  # Test #filter
  list.filter {|e| e.even?}
  # => [2, 4]
end


