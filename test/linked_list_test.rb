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

  def test_it_initializes_head_as_nil
    assert_nil @list.head
  end

  def test_it_appends_data
    assert_equal "doop", @list.append("doop")
  end

  def test_it_sets_head
    @list.append("doop")

    assert_instance_of Node, @list.head
    assert_nil @list.head.next_node
  end

  def test_it_counts_nodes
    @list.append("doop")

    assert_equal 1, @list.count
  end

  def test_to_string_method
    @list.append("doop")

    assert_equal "doop", @list.to_string
  end

  def test_multiple_nodes
    @list.append("doop")
    @list.append("deep")

    assert_instance_of Node, @list.head.next_node
    assert_equal 2, @list.count
  end

  def test_to_string_with_multiple_nodes
    @list.append("doop")
    @list.append("deep")

    assert_equal "doop deep", @list.to_string
  end

end
