require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end
end
