class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(values)
    separated_values = values.split(" ")
    separated_values.each { |value| @list.append(value) }
    @list.to_string
  end

end
