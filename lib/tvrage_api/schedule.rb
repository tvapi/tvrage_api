class TvrageApi::Schedule < TvrageApi::Base
  # Quick access to TV schedule
  #
  # access: FREE
  # param (flat params):
  #   quick(country)
  #   quick(nil)
  #   quick('US')
  # param (hash params):
  #   quick
  #   quick(country: 'US')
  # output: Faraday::Response instance with string
  def quick(*options)
    quick_path_with_params(*options).get
  end

  # Quick access to TV schedule - return only url
  #
  # access: FREE
  # param (flat params):
  #   quick_url(country)
  #   quick_url(nil)
  #   quick_url('US')
  # param (hash params):
  #   quick_url
  #   quick_url(country: 'US')
  # output: url string
  def quick_url(*options)
    quick_path_with_params(*options).url
  end

  # Full Schedule
  #
  # access: FREE
  # param (flat params):
  #   full(country, 24_format)
  #   full(nil, nil)
  #   full('US', nil)
  #   full('US', 1)
  # param (hash params):
  #   full
  #   full(country: 'US')
  #   full(country: 'US', 24_format: 1)
  # output: Faraday::Response instance with parsed XML string
  def full(*options)
    full_path_with_params(*options).get
  end

  # Full Schedule - return only url
  #
  # access: FREE
  # param (flat params):
  #   full_url(country, 24_format)
  #   full_url(nil, nil)
  #   full_url('US', nil)
  #   full_url('US', 1)
  # param (hash params):
  #   full_url
  #   full_url(country: 'US')
  #   full_url(country: 'US', 24_format: 1)
  # output: url string
  def full_url(*options)
    full_path_with_params(*options).url
  end

  private

  def quick_path_with_params(*options)
    path(quick_path).params(normalize_schedule_options(*options))
  end

  def quick_path
    'tools/quickschedule.php'
  end

  def full_path_with_params(*options)
    path(full_path).params(normalize_full_schedule_options(*options))
  end

  def full_path
    'feeds/fullschedule.php'
  end
end