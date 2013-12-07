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

All request class return instance where result method contain object or collection.

For example:
```console
series = TvrageApi::Request::Show.find('buffy')
series.result
=> #<TvrageApi::Show ...>
```

* TvrageApi::Request::Search.find(show_name) - return collection of show
* TvrageApi::Request::Search.find_full(show_name) - return collection of show with more details
* TvrageApi::Request::Show.find(show_id) - return show
* TvrageApi::Request::Show.find_full(show_id) - return show with more details
* TvrageApi::Request::Show.episodes(show_id) - return simple show information with all episodes
* TvrageApi::Request::Show.episode(show_id, season, episode) - return simple show information with specific episode
* TvrageApi::Request::Update.all - return all shows (simple information: id, name)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
