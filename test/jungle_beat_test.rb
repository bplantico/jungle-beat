require './test/test_helper'

class JungleBeatTest < Minitest::Test

  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jb
  end

  def test_it_initializes_with_a_linked_list
    assert_instance_of LinkedList, @jb.list
    assert_nil @jb.list.head
  end

  def test_it_can_append
    assert_equal "deep doo ditt", @jb.append("deep doo ditt")

    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data
    assert_equal 3, @jb.count

    assert_equal "woo hoo shoo", @jb.append("woo hoo shoo")
    assert_equal 6, @jb.count
  end

end
