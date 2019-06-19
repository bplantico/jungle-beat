require './test/test_helper'

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

  def test_to_string_with_multiple_nodes
    @list.append("doop")
    @list.append("deep")
    @list.append("beep boop")

    assert_equal "doop deep beep boop", @list.to_string

    @list.append("you're killing me Smalls")

    assert_equal "doop deep beep boop you're killing me Smalls", @list.to_string
    assert_equal 4, @list.count
  end

  def test_it_can_prepend_nodes
    @list.append("plop")
    @list.append("suu")

    assert_equal "plop suu", @list.to_string

    @list.prepend("dop")

    assert_equal "dop plop suu", @list.to_string
    assert_equal 3, @list.count
  end

  def test_it_can_insert_after_given_nodes
    @list.append("plop")
    @list.append("suu")
    @list.prepend("dop")

    @list.insert(1, "woo")

    assert_equal "dop woo plop suu", @list.to_string

    @list.insert_after(3, "meow meow")

    assert_equal "dop woo plop meow meow suu", @list.to_string
  end

end
