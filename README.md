# Windows31jPunctuation

Unicode has a lot of visually confusable punctutaions (https://www.unicode.org/reports/tr39/#Confusable_Detection).

This gem replace some punctuations to Windows-31J compatible characters.

Conversion table is based on https://y-kawaz.hatenadiary.org/entry/20101112/1289554290 .

## Installation

Add this line to your application's Gemfile:

```ruby
gem "windows_31j_punctuation", git: "https://github.com/socioart/windows_31j_punctuation", tag: "v0.1.0"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install windows_31j_punctuation

## Usage

```ruby
require "windows_31j_punctuation"

Windows31jPunctuation.replace("‑‒–") # "---" (Replace NON-BREAKING HYPHEN, FIGURE DASH, EN DASH to HYPHEN MINUS)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/socioart/windows_31j_punctuation.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
