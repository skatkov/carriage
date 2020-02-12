require "test_helper"

class CarriageTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Carriage::VERSION
  end

  TAG = 'acart0c1-20'
  KEY_ID = 'justkeyid'

  def test_build_2
    expected = append_keys(prepend_url("ASIN.1=B00WR23X5I&Quantity.1=1&ASIN.2=B018YJYPTA&Quantity.2=1"))
    items = [{asin: 'B00WR23X5I', quantity: 1}, {asin: 'B018YJYPTA', quantity: 1}]

    assert_equal expected, Carriage.build(items, TAG, KEY_ID)
  end

  def test_without_quantity
    expected = append_keys(prepend_url("ASIN.1=B00WR23X5I&Quantity.1=1&ASIN.2=B018YJYPTA&Quantity.2=1"))
    items = [{asin: 'B00WR23X5I'}, {asin: 'B018YJYPTA'}]

    assert_equal expected, Carriage.build(items, TAG, KEY_ID)
  end

  def test_build_1
    expected = append_keys(prepend_url("ASIN.1=B00WR23X5I&Quantity.1=1"))
    items = [{asin: 'B00WR23X5I', quantity: 1}]
    assert_equal expected, Carriage.build(items, TAG, KEY_ID)
  end

  def test_missing_key_id
    expected = prepend_url("ASIN.1=B00WR23X5I&Quantity.1=1&AssociateTag=#{TAG}")
    items = [{asin: 'B00WR23X5I', quantity: 1}]

    assert_equal expected, Carriage.build(items, TAG, nil)
    assert_equal expected, Carriage.build(items, TAG, "")
  end

  def test_zero
    assert_nil Carriage.build({}, TAG, KEY_ID)
    assert_nil Carriage.build(nil, TAG, KEY_ID)
  end


  private

  def prepend_url(str)
    "https://www.amazon.com/gp/aws/cart/add.html?#{str}"
  end

  def append_keys(str)
    "#{str}&AssociateTag=#{TAG}&AWSAccessKeyId=#{KEY_ID}"
  end
end
