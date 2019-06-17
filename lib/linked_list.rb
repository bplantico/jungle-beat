class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @head = Node.new(data) if @head == nil
    @count += 1
    data
  end

  def to_string
    @head.data
    # require "pry"; binding.pry
  end

end
