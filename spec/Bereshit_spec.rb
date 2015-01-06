require 'spec_helper'

describe Bereshit do

  # Crappy specs start here
  describe ".sermon" do
    it "should return a string" do
      sermon = Bereshit.sermon('hebrew')
      expect(sermon).to be_a String
      expect(sermon.length > 5).to be_true
    end
  end

  describe ".paragraphs" do
    it "should return 3 paragraphs" do
      lines = Bereshit.paragraphs(3, false, false, 'english')
      puts "PARAG |#{lines}|"
      lines.should_not == ""
    end
  end

end
