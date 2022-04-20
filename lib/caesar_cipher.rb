# 1) first we need to get an array composed of the ASCII value for each character of the input string:
def input_string_to_chars(string, key=3)
  chars_array = string.chars

# 2) let's convert each characters in chars_array into its ASCII value:
  array_ASCII = chars_array.map { |c| c.ord}

# 3) let's play with each character  ():
  new_ASCII_values_array = array_ASCII.map do |nber|
    
    #we need to always get values between "65 and 90" and "97 and 122" to have letters of the alphabet:
    if (((nber + key) > 90) && ((nber + key) < 97))
      nber = ((nber + key) - 26)
    elsif (nber + key > 122)
      nber = ((nber + key) - 26)
    #we isolate the spacing that separated each word in the input_string:  
    elsif nber == 32 #ASCII for " "
      nber = nber
    elsif nber == 45 #ASCII for "-"
      nber = nber
    #we add the key value to each letter's ASCII value in order to translate into Ceasar's cipher (depending on the given key value, or by default = 3):  
    else      
      nber+=key      
    end
    
  end

# 4) let's put that back into letters:
  new_letters_array = new_ASCII_values_array.map do |v|
    v.chr
  end
  return new_letters_array.join
  
end                                

p input_string_to_chars("abcde-fghijklm nopqrst_uvwxyz")
p input_string_to_chars("ABCDE-FGHIJKLM NOPQRST_UVWXYZ")
p input_string_to_chars("______")





=begin
def ceasar_cipher(string, clé de chiffrement = 5 #(nombre de lettres à décaler) pour en sortir le string modifié.
  
end
=end


=begin
DIFFERENTES SOLUTIONS :

def wrapper (range1,range2,num1, shift)
    num =  num1 + shift
    range = range2 - range1
    total = range1+((num-range1) % range)
    total.chr
end

def shifter (letter, number)
    num1 = letter.ord
    if (65..90).cover?(num1)
       return wrapper(65,91,num1,number)
    elsif (97..122).cover?(num1)
       return wrapper(97,123,num1,number)
    else
       return letter
   end          
end

def encoder (string, num)
    string.split("").map do 
        |item| 
        shifter(item,num) 
    end.join("")
end

p encoder("What a string!", 5)

**********************************************************************************

ALPHABET_SIZE = 26

def caesar_cipher(string)
  shiftyArray = []
  charLine = string.chars.map(&:ord)

  shift = 1
  ALPHABET_SIZE.times do |shift|
    shiftyArray << charLine.map do |c|
      ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
    end.join
  end

  shiftyArray
end

puts caesar_cipher("testing")

**********************************************************************************

def caesar_cipher(string, shift = 1)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher("testing").join

**********************************************************************************

def caesar_cipher(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter = non_caps.merge(caps)
  
  string.chars.map { |c| encrypter.fetch(c, c) }
end

p caesar_cipher("testingzZ1Z").join

**********************************************************************************

def ceasar_cipher(string,shift_distance)
    message=''
    string.each_char do |string_char| #for each character in the string
        if string_char == ' ' then
            message += string_char
            next
        end
        ascii_position=string_char.ord#get the ascii position of the character
        ascii_shift=ascii_position - shift_distance
        replacement=ascii_shift.chr
        message += replacement
    end
    return message
end

ceasar_cipher('who is',3)

**********************************************************************************

  
=end