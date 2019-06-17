class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = head
    @count = 0
  end

  def append(data)
    @head = Node.new(data)
    @count += 1
    data
  end

  def to_string
    @head.data
  end
end
