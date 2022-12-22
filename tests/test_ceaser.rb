require 'test/unit'
require_relative '../ceaser/ceaser'

class TC_Ceaser < Test::Unit::TestCase
  def setup; end

  def teardown; end

  def test_left_case
    code = 'AB cd'
    shift_num = 3
    is_left = true

    expected_encrypted = 'YZ ab'
    expected_decrypted = code

    encrypted = Ceaser.encrypt(code: code, shift_num: shift_num, is_left: is_left)
    decrypted = Ceaser.decrypt(code: encrypted, shift_num: shift_num, is_left: is_left)

    assert_equal(expected_encrypted, encrypted)
    assert_equal(expected_decrypted, decrypted)
  end

  def test_right_case
    code = 'AB cd'
    shift_num = 3
    is_left = false

    expected_encrypted = 'CD ef'
    expected_decrypted = code

    encrypted = Ceaser.encrypt(code: code, shift_num: shift_num, is_left: is_left)
    decrypted = Ceaser.decrypt(code: encrypted, shift_num: shift_num, is_left: is_left)

    assert_equal(expected_encrypted, encrypted)
    assert_equal(expected_decrypted, decrypted)
  end
end
