class Node
  attr_reader   :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def tail?
    @next_node.nil?
  end

  def valid?
    valid_beats = [
      'plop',
      'suu',
      'doop',
      'deep',
      'BBBEEEEPP',
      'beep',
      'beep boop',
      "you're killing me Smalls",
      'dop',
      'woo',
      'meow',
      'meow meow',
      'shi',
      'shu',
      'blop',
      'doo',
      'ditt',
      'hoo',
      'shoo'
                  ]

    valid_beats.include?(@data)
  end

end
