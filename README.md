# Bereshit

[Bereshit](http://en.wikipedia.org/wiki/Bereshit_(parsha)) mean 'in the beginning...' in hebrew. This gems is a lorem ipsum based on Genesis 1:1 the first Chapter of the book of Genesis (Torah/Bible)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bereshit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bereshit

## Usage

```ruby
require 'bereshit'
```

####Retrieve a paragraph
```ruby
paragraph = Bereshit.paragraphs
#or detailed
paragraph = Bereshit.paragraphs(1, false, false, 'hebrew')
puts paragraph
=> <p>בְּרֵאשִׁית בָּרָא אֱלֹהִים אֵת הַשָּׁמַיִם וְאֵת הָאָרֶץ:</p>

```

####retrieve 3 paragraphs
```ruby
puts paragraphs = Bereshit.paragraphs(3, false, false, 'with_typo_fallback_to_english')
=> <p>And God made the beasts of the earth according to their kind and the cattle according to their kind, and all the creeping things of the ground according to their kind, and God saw that it was good.</p><p>And God said, "Let us make man in our image, after our likeness, and they shall rule over the fish of the sea and over the fowl of the heaven and over the animals and over all the earth and over all the creeping things that creep upon the earth."</p><p>And God created man in His image; in the image of God He created him; male and female He created them.</p>
#this was a String not an Array of 3 paragraph strings

```

####retrieve a paragraph without the `<p>` tag
```ruby
puts Bereshit.paragraphs(1, true, false, 'english')
=> And God said, "Let the earth sprout vegetation, seed yielding herbs and fruit trees producing fruit according to its kind in which its seed is found, on the earth," and it was so.

```

####retrieve a paragraph without [the full stop](http://en.wikipedia.org/wiki/Full_stop) (.)
```ruby
puts Bereshit.paragraphs(1, true, true, 'kreyol')
=> Bondye kreye moun. Li fè l' pòtre ak li. Li kreye yo gason ak fi
```

####shortcut
```ruby
Bareshit.p  #with all the parameters
#is equal to 
Bereshit.paragraphs #with all the parameters
```

####retrieve a sermon 
```ruby
title = Bereshit.sermon
#or
puts title = Bereshit.sermon('kreyol')
=> Bondye kreye moun. Li fè l' pòtre ak li. Li kreye yo gason ak fi
```
In this version all the 'sermon' are in english... but feel free to fork, translate and add sermons.
And the sermon are related to ALL the chapter of the book of Genesis so not only the first chapter.

####Locale

Available locale
'hebrew'
'kreyol' stands for [Haitian kreyol](http://en.wikipedia.org/wiki/Haitian_Creole)
'english'


##todo
add other locales :)
add sermon ...


## Contributing

[![guinslym](https://s3.amazonaws.com/uifaces/faces/twitter/guinslym/73.jpg)](http://uifaces.com/guinslym)

1. Star it :)
2. Fork it ( https://github.com/guinslym/bereshit/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Test it
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request

