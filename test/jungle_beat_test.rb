require './test/test_helper'

class JungleBeatTest < Minitest::Test

  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jb
  end

end
