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
      head = @head
      until head.tail?
        head = head.next_node
        count += 1
      end
      return count
    end
  end

  def to_string
    string = ""
    head = @head

    return string if head.nil?

    string = head.data
    until head.tail?
      string += " #{head.next_node.data}"
      head = head.next_node
    end
    string
  end

end
