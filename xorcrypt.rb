class XORCrypt
  class << self
    def encrypt(input, key)
      input.each_byte.map do |char|
        (char ^ key.to_i(2))
      end.map { |a| a.to_s(2) }
    end

    def decrypt(input, key)
      input.map do |binary|
        (binary.to_i(2) ^ key.to_i(2))
      end.map(&:chr).join
    end
  end
end
