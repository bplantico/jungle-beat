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

end
