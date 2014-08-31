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

* II way (direct access to api class, many entry points)

Search show by name:

```ruby
client = TvrageApi::Client.new
client.search.by_name(show: 'buffy')
client.search.full_by_name(show: 'buffy')
```

```ruby
search = TvrageApi::Search.new
search.by_name(show: 'buffy')
search.full_by_name(show: 'buffy')
```

Search show by id:

```ruby
client = TvrageApi::Client.new
client.show.find(sid: '123')
client.show.find_full(sid: '123')
client.show.episodes(sid: '123') # show with all episodes
client.show.episode(sid: '123', ep: 'SEASONxEPISODE') # show with specific episode
client.show.all
```

```ruby
show = TvrageApi::Show.new
show.find(sid: '123')
show.find_full(sid: '123')
show.episodes(sid: '123') # show with all episodes
show.episode(sid: '123', ep: 'SEASONxEPISODE') # show with specific episode
show.all
```

QuickInfo (it return plain text, not parsed)

```ruby
client = TvrageApi::Client.new
client.info.find(show: 'Alias') # main information
client.info.find(show: 'Alias', ep: '2x04') # episode information
client.info.find(show: 'Alias', exact: 1) # exact information
```

```ruby
info = TvrageApi::Info.new
info.find(show: 'Alias') # main information
info.find(show: 'Alias', ep: '2x04') # episode information
info.find(show: 'Alias', exact: 1) # exact information
```

Schedule (quick method return plain text)

```ruby
client = TvrageApi::Client.new
client.schedule.quick
client.schedule.full(country: 'US')
```

```ruby
schedule = TvrageApi::Schedule.new
schedule.quick
schedule.full(country: 'US')
```

Recaps

```ruby
client = TvrageApi::Client.new
client.recap.all
client.recap.show(show: 5410)
client.recap.last(days: 100)
```

```ruby
recaps = TvrageApi::Recaps.new
recap.all
recap.show(show: 5410)
recap.last(days: 100)
```

Updates:

```ruby
client = TvrageApi::Client.new
client.update.last # last 24 hours
client.update.last(hours: 48) # set timeline (default: 48)
client.update.last(sort: 'episodes') # only shows where episodes have changed
client.update.last(since: 1403668430) # updates since last visit
```

```ruby
update = TvrageApi::Update.new
update.last # last 24 hours
update.last(hours: 48) # set timeline (default: 48)
update.last(sort: 'episodes') # only shows where episodes have changed
update.last(since: 1403668430) # updates since last visit
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
