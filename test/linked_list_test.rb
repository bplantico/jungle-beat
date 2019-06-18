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

  def test_it_initializes_with_head_as_nil
    assert_nil @list.head
  end

  def test_it_can_append_to_list
    assert_equal "doop", @list.append("doop")
    assert_equal "doop", @list.head.data
    assert_nil @list.head.next_node
  end

  def test_it_keeps_count_of_nodes
    assert_equal 0, @list.count
    @list.append("doop")
    assert_equal 1, @list.count
  end

  def test_it_can_print_data_to_string
    assert_equal "", @list.to_string
    @list.append("doop")
    assert_equal "doop", @list.to_string
  end

  def test_it_appends_multiple_nodes
    @list.append("doop")
    assert_nil @list.head.next_node
    @list.append("deep")
    assert_instance_of Node, @list.head.next_node
    @list.append("BBBEEEEPP")
    assert_nil @list.head.next_node.next_node.next_node
  end

  def test_it_counts_multiple_nodes
    assert_equal 0, @list.count
    @list.append("doop")
    assert_equal 1, @list.count
    @list.append("deep")
    assert_equal 2, @list.count
    @list.append("beep")
    assert_equal 3, @list.count
  end

end
