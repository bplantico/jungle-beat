require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_its_head_initializes_nil
    assert_nil @list.head
  end

  def test_it_can_append_data
    assert_equal "doop", @list.append("doop")
  end

  def test_it_stores_appended_data
    @list.append("doop")

    assert_instance_of Node, @list.head
    assert_equal "doop", @list.head.data
    assert_nil @list.head.next_node
  end
end
