require_relative '../lib/caesar_cipher'

describe "caesar_cipher_letter method" do
  it "should return the offset letter" do
    expect(caesar_cipher_letter("a",10)).to eq("k")
    expect(caesar_cipher_letter("Z",1)).to eq("A")
    expect(caesar_cipher_letter("z",35)).to eq("i")
    expect(caesar_cipher_letter("f",5)).to eq("k")
    expect(caesar_cipher_letter("I",12)).to eq("U")
    expect(caesar_cipher_letter("k",8)).to eq("s")
    expect(caesar_cipher_letter("p",9)).to eq("y")
  end
end

describe "caesar_cipher method" do
    it "should return the offset phrase" do
      expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
      expect(caesar_cipher("My name is: Nicolas",3)).to eq("Pb qdph lv: Qlfrodv")
    end
    it "should return an error when denying the user entry" do
        expect(caesar_cipher("What a string!",-5)).to eq("Yo ! Je ne prends que les chaines de caractere. TG")
        expect(caesar_cipher("My name is: Nicolas",1.34)).to eq("Yo ! Je ne prends que les chaines de caractere. TG")
        expect(caesar_cipher(23,98)).to eq("Yo ! Je ne prends que les chaines de caractere. TG")
        expect(caesar_cipher(true,6)).to eq("Yo ! Je ne prends que les chaines de caractere. TG")
      end
end