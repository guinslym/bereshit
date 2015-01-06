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
    it "should return 3 paragraphs" do
      lines = Bereshit.paragraphs(3, false, false, 'english')
      expect(lines.size).to be > 2
    end
  end


end
