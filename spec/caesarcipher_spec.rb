require './lib/caesarcipher.rb'


describe Caesarcipher do
  describe "#encrypt" do
    it "encrypts the string" do
      caesarcipher = Caesarcipher.new("What a string!", 5)
      expect(caesarcipher.encrypt).to eql ("Bmfy f xywnsl!")
    end
  end

  # describe "#decrypt"do
  #   it "decrypts the string" do
  #     caesarcipher = Caesarcipher.new("Get Some!", 2)
  #     expect(caesarcipher.decrypt).to eql ("Ecq")
  #   end
  # end 
end