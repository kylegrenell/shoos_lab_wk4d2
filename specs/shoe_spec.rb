require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/shoe')

class TestShoe < MiniTest::Test

  def setup
    options = {
      "orderer" => "Mickey",
      "address" => "CodeClan",
      "quantity" => "2",
      "size" => "9"
    }
    @shoe = Shoe.new(options)
  end

  def test_if_orderer_exists
    assert_equal("Mickey", @shoe.orderer)
  end

  def test_quantity()
    assert_equal(Fixnum, @shoe.quantity.class)
    assert_equal(2, @shoe.quantity)
  end

end