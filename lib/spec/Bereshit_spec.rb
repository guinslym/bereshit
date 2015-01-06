require 'spec_helper'

describe Bereshit do

  # Crappy specs start here
  describe ".sermon" do
    it "should return a string" do
      sermon = Bereshit.sermon
      expect(sermon).to be_a String
    end
  end

  describe ".paragraphs" do
    it "should return 3 paragraphs" do
      lines = Bereshit.p(3, false, false)
      puts "PARAG |#{lines}|"
      lines.should_not == ""
    end
  end

  describe ".c" do
    it "should return 100 characters" do
      chars = Bereshit.c(100, false, false)
      puts "CHARS |#{chars}|"
      chars.length.should == 107 # 107 with HTML tags
    end
  end

end

lang = ['english', 'kreyol', 'hebrew']
3.times do
#puts Bereshit.p()
puts Bereshit.paragraphs(5, false, false, lang.sample)
end

3.times do
#puts Bereshit.p()
puts Bereshit.sermon()
end