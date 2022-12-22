require 'test/unit'
require_relative '../enigma/enigma'

class TC_Enigma < Test::Unit::TestCase
  def setup; end

  def teardown; end

  def test_case1
    key_word = 'XYZ'
    plug_patterns = { A: 'B', C: 'D', E: 'F' }
    code = 'MAYBE I COULD CREATE AN ENIGMA.'

    enigma = Enigma.new(key_word: key_word, plug_patterns: plug_patterns)

    encrypted = enigma.encrypt(code: code)
    decrypted = enigma.decrypt(encrypted_code: encrypted)

    expected_decrypted = code

    assert_not_equal(code, encrypted)
    assert_equal(expected_decrypted, decrypted)
  end
end
