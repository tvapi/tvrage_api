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

You have two way for access to api:

* I way (create client class, one entry point)

```ruby
client = TvrageApi::Client.new
client.info # => #<TvrageApi::Info>
client.recap # => #<TvrageApi::Recap>
client.schedule # => #<TvrageApi::Schedule>
client.search # => #<TvrageApi::Search>
client.show # => #<TvrageApi::Show>
client.update # => #<TvrageApi::Update>
```

* II way (direct access to api class, many entry points)

```ruby
TvrageApi::Info.new
TvrageApi::Recap.new
TvrageApi::Schedule.new
TvrageApi::Search.new
TvrageApi::Show.new
TvrageApi::Update.new
```

## Methods

For almost all method you can pass hash attributes or multiple attributes specified in method comment.

### Info (QuickInfo) methods

For method attributes read https://github.com/wafcio/tvrage_api/blob/master/lib/tvrage_api/info.rb

* find
* find_url

### Recap methods

For method attributes read https://github.com/wafcio/tvrage_api/blob/master/lib/tvrage_api/recap.rb

* all
* all_url
* show
* show_url
* last
* last_url

### Schedule methods

For method attributes read https://github.com/wafcio/tvrage_api/blob/master/lib/tvrage_api/schedule.rb

* quick
* quick_url
* full
* full_url

### Search methods

For method attributes read https://github.com/wafcio/tvrage_api/blob/master/lib/tvrage_api/search.rb

* by_name
* by_name_url
* full_by_name
* full_by_name_url

### Show (search show) methods

For method attributes read https://github.com/wafcio/tvrage_api/blob/master/lib/tvrage_api/show.rb

* find
* find_url
* find_full
* find_full_url
* episodes
* episodes_url
* episode
* episode_url
* all
* all_url


### Update methods

* last
* last_url

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
