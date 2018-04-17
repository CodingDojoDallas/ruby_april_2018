require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "removes characters and adds ... in place " do 
    expect(Stringer.minify "Bubbles are fun to play with", 11).to eq("Bubbles are...")
    expect(Stringer.minify "Bubbles", 11).to eq("Bubbles...")
  end

  it "replaces word in string" do 
    expect(Stringer.replacify "Puppies are cute", "cute", "fluffy").to eq("Puppies are fluffy")
  end

  it "moves words in string to array" do 
    expect(Stringer.tokenize "Tacos are yummy").to eq(["Tacos", "are", "yummy"])
  end

  it "removes word from string" do 
    expect(Stringer.removify "I'm not funny", "not").to eq("I'm funny")
  end

end