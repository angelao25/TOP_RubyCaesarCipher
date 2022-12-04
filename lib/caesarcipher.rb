

class Caesarcipher

  @@LOWERCASE_LETTERS = ("a".."z").to_a
  @@UPPERCASE_LETTERS = ("A".."Z").to_a

  attr_accessor :key, :text

  def initialize(text, key)
    #The constructor receives the key on initialization
    @text = text #The key is then made an instance variable, which makes it accessible
    @key = key
  end

  def encrypt()
    #This method handles the encryption of the text
    encrypted = "" #This is the variable which will hold the encrypted text
    text.split("").to_a.each do |x| #Converts the text into an array an itearate over each index
      if @@UPPERCASE_LETTERS.include? x #We then check if the current variable is included in the UPPERCASE array
        encrypted += @@UPPERCASE_LETTERS[ (@@UPPERCASE_LETTERS.index(x) + key) % 26] #We then find it's index and add the key to it
      elsif @@LOWERCASE_LETTERS.include? x
        encrypted += @@LOWERCASE_LETTERS[ (@@LOWERCASE_LETTERS.index(x) + key) % 26 ]

      else
        encrypted += x
      end
    end
    return encrypted
  end

  def decrypt() 
    #This method is responsible for decrypting the encrypted text
    decrypted = "" #This variable will hold the decrypted text
    text.split("").to_a.each do |x|
      if @@UPPERCASE_LETTERS.include? x
        decrypted += @@UPPERCASE_LETTERS[ (@@UPPERCASE_LETTERS.index(x) - key) % 26]
      elsif @@LOWERCASE_LETTERS.include? x
        decrypted += @@LOWERCASE_LETTERS[ (@@LOWERCASE_LETTERS.index(x) - key) % 26]
      else
        decrypted += x
      end
    end
    return decrypted
  end
end

cipher = Caesarcipher.new("What a string!", 5)
puts cipher.encrypt