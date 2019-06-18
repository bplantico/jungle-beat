class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head == nil
      @head = new_node
    end

    data
  end

  def count
    if @head.nil?
      return 0
    else
      count = 1
    end
  #   require "pry"; binding.pry
  end

end
