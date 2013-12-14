[![Build Status](https://travis-ci.org/wafcio/tvrage_api.png?branch=master)](https://travis-ci.org/wafcio/tvrage_api)
[![Dependency Status](https://gemnasium.com/wafcio/tvrage_api.png)](https://gemnasium.com/wafcio/tvrage_api)
[![Code Climate](https://codeclimate.com/github/wafcio/tvrage_api.png)](https://codeclimate.com/github/wafcio/tvrage_api)
[![Coverage Status](https://coveralls.io/repos/wafcio/tvrage_api/badge.png)](https://coveralls.io/r/wafcio/tvrage_api)
[![Gem Version](https://badge.fury.io/rb/tvrage_api.png)](http://badge.fury.io/rb/tvrage_api)

# TvrageApi

tvrage_api is a simple ruby client for accessing TV shows information from the tvrage.com API.

## Getting started

You can add it to your Gemfile with:

```ruby
gem 'tvrage_api'
```
Run the bundle command to install it.

## How to use

There is one entry point:

```ruby
client = TvrageApi::Client.new
```

Search show by name:

```ruby
client = TvrageApi::Client.new
client.search.by_name('buffy')
client.search.full_by_name('buffy')
```

Search show by id:

```ruby
client = TvrageApi::Client.new
client.show.find('123')
client.show.find_full('123')
client.show.episodes('123') # show with all episodes
client.show.episode('123', season, episode) # show with specific episode
```

Search all show ids:

```ruby
client = TvrageApi::Client.new
client.update.all
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
