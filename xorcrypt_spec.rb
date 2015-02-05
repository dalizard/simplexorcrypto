require_relative 'xorcrypt'

describe XORCrypt do
  let(:key) { '11110011' }
  let(:input) { 'Wiki' }
  let(:encrypted) { %w[10100100 10011010 10011000 10011010] }

  describe ".encrypt" do
    it "encrypts the string using a key" do
      expect(described_class.encrypt(input, key)).to eq(encrypted)
    end
  end

  describe ".decrypt" do
    it "decrypts the string using a key" do
      expect(described_class.decrypt(encrypted, key)).to eq('Wiki')
    end
  end
end
