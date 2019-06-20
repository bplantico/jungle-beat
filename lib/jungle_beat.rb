class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(values)
    temp_string = ""
    separated_values = values.split(" ")
    separated_values.each do |value|
      @list.append(value)
      temp_string.concat(" #{value}")
    end
    temp_string.strip
  end

  def count
    if @list.head.nil?
      return 0
    else
      count = 1
      head  = @list.head
      until head.tail?
        head = head.next_node
        count += 1
      end
      return count
    end
  end

  def play
    `say -v 'Kyoko' -r 200 #{@list.to_string}`
  end

end
