require 'spec_helper'

describe Bereshit do

  # Crappy specs start here
  describe ".sermon" do
    sermon = Bereshit.sermon('hebrew')

    it "should return a string" do
      expect(sermon).to be_a String
    end
    it 'expect sermon title.size to be greater than 2' do
      expect(sermon.size).to be > 2
    end
  end

  describe ".paragraphs" do
    lines = Bereshit.paragraphs(3, false, false, 'english')

    it "should return 3 paragraphs" do
      #it will not return an array of 3
      #So I have to split it to see if there is 3 paragraphs
      expect(lines.split('<p>').size).to be >= 4
    end
    it 'includes a paragraph tag' do
      expect(lines.include?('<p>')).to be true
    end
  end


end
