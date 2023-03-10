module Ceaser
  module_function

  U_ALF_ARR = ('A'..'Z').to_a.freeze
  D_ALF_ARR = U_ALF_ARR.map(&:downcase).freeze
  ARR_SIZE  = U_ALF_ARR.length

  def encrypt(code:, shift_num:, is_left:)
    code.split("").map do |c|
      if c.match?(/[a-z]/)
        idx = D_ALF_ARR.find_index(c)
        D_ALF_ARR[calc_shifted_idx(idx, shift_num, is_left)]
      elsif c.match?(/[A-Z]/)
        idx = U_ALF_ARR.find_index(c)
        U_ALF_ARR[calc_shifted_idx(idx, shift_num, is_left)]
      else
        c
      end
    end.join
  end

  def decrypt(code:, shift_num:, is_left:)
    encrypt(code: code, shift_num: shift_num, is_left: !is_left)
  end

  def calc_shifted_idx(idx, shift_num, is_left)
    shift_num -= 1
    is_left ? (idx - shift_num) % ARR_SIZE : (idx + shift_num) % ARR_SIZE
  end
end
