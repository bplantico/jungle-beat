class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
    @string = ""
  end

  def append(data)

    if @head == nil
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end

    @count += 1

    if @string.empty?
      @string = data
    else
      @string = @string + " " + data
    end

    data
  end

  def to_string
    @string
  end

end
