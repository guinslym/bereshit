# -*- coding: utf-8 -*-
#require "bereshit/version"
require 'json'


module Bereshit
  
  PUNCTUATION = ['.', ',', '!', '?', ':']
  LOCALE = ['hebrew', 'english', 'kreyol']

  # Return a sermon
  def self.sermon(locale='english')
    #sermons scrappe from http://www.sermonnotebook.org/otsermons.htm

    #if you have a typo in the locale name THAN thre program will fallback to english
    locale = LOCALE.include?(locale) ? locale : 'english'

    #load the json file 'locale/english/sermon.json'
    loader = Loader.new('locale/' + locale +'/sermon.json')

      return loader.lines.sample
  end

  # Return Paragraphs
  def self.paragraphs(count = 5, plainText = false, exclude_trailing_period = false, locale="english")

    #if you have a typo in the locale name THAN thre program will fallback to english
    locale = LOCALE.include?(locale) ? locale : 'english'

    #load the json file 'locale/english/bereshit.json'
    loader = Loader.new('locale/' + locale +'/bereshit.json')

    # Start at a random index in the array
    start_inx = rand(loader.lines.count - count)

    # Check for overrun
    raise "I can't retrieve that many paragraphs. Try a smaller value." if (start_inx + count) > loader.lines.count

    # Build paragraphs from array
    paragraphs = loader.lines[start_inx, count]

    # Build final format based on parameters
    paragraphs.map! do |line|

      remove_puctuation(line) if exclude_trailing_period
      if plainText
        line = "#{line}"
      else
        line = "<p>#{line}</p>"
      end
    end

    paragraphs.join('')
  end

  private


  def self.remove_puctuation(line)
    PUNCTUATION.each do |punct|
      if line[line.length - 1].to_s == punct
        line[line.length - 1] = ""
        return
      end
    end
  end


  # Genesis file loader
  class Loader

    attr_accessor :lines, :file

    def initialize(file='')
      self.file = file
      self.lines = []
        file = File.read(File.dirname(__FILE__) << "/"  + file)
        return self.lines = JSON.parse(file)
          #File.open(File.dirname(__FILE__) << '/sermon.txt').each_line do |line|
          puts line
    end#end initialize

  end#loader

end#module


