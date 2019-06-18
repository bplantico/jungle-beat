class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head == nil
      @head = new_node
    else
      head = @head
      until head.tail?
        head = head.next_node
      end
      head.next_node = new_node
    end

    data
  end

  def count
    if @head.nil?
      return 0
    else
      count = 1
    end
  end

  def to_string
    string = ""
    if @head.nil?
      string
    else
      string = @head.data
    end
  end

end
