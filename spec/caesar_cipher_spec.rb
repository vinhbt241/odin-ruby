require './caesar_cipher'

describe "caesar_cipher" do
  it "Take  in a string and the shift factor and then outputs the modified string" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "Number in string remain the same" do
    expect(caesar_cipher("1234", 5)).to eql("1234")
  end

  it "special symbol like @, &, % remain the same" do
    expect(caesar_cipher("@&%", 5)).to eql("@&%")
  end
end
