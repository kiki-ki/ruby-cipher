require 'test/unit'
require_relative '../vigenere/vigenere'

class TC_Vigenere < Test::Unit::TestCase
  def setup; end

  def teardown; end

  def test_case1
    key = 'ARM'
    code = 'CODE'

    expected_encrypted = 'CFPE'
    expected_decrypted = code

    encrypted = Vigenere.encrypt(key: key, code: code)
    decrypted = Vigenere.decrypt(key: key, code: encrypted)

    assert_equal(expected_encrypted, encrypted)
    assert_equal(expected_decrypted, decrypted)
  end
end
