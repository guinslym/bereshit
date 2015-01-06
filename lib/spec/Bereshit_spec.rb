require 'spec_helper'

describe Bereshit do
###need to test the following
end

lang = ['english', 'kreyol', 'hebrew']
3.times do
#puts BetterLorem.p()
puts Bereshit.paragraphs(5, false, false, lang.sample)
end

3.times do
#puts BetterLorem.p()
puts Bereshit.sermon()
end