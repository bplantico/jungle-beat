class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head.nil?
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

  def prepend(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      old_head = @head
      @head = new_node
      @head.next_node = old_head
    end
    data
  end

  def insert_after(position, data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      head = @head
      (position - 1).times { head = head.next_node }
      new_next = head.next_node
      head.next_node = new_node
      head.next_node.next_node = new_next
    end
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
