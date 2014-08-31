class TvrageApi::Schedule < TvrageApi::Base
  # Quick access to TV schedule
  #
  # access: FREE
  # param: options hash
  #   country: two chars country abbreviation (optional)
  # output: Faraday::Response instance with string
  def quick(options = {})
    quick_path_with_params(options).get
  end

  # Quick access to TV schedule - return only url
  #
  # access: FREE
  # param: options hash
  #   country: two chars country abbreviation (optional)
  # output: url string
  def quick_url(options = {})
    quick_path_with_params(options).url
  end

  # Full Schedule
  #
  # access: FREE
  # param: options hash
  #   country: two chars country abbreviation (optional)
  #   24_format: 1, time format (optional)
  # output: Faraday::Response instance with parsed XML string
  def full(options = {})
    full_path_with_params(options).get
  end

  # Full Schedule - return only url
  #
  # access: FREE
  # param: options hash
  #   country: two chars country abbreviation (optional)
  #   24_format: 1, time format (optional)
  # output: url string
  def full_url(options = {})
    full_path_with_params(options).url
  end

  private

  def quick_path_with_params(options)
    path(quick_path).params(options)
  end

  def quick_path
    'tools/quickschedule.php'
  end

  def full_path_with_params(options)
    path(full_path).params(options)
  end

  def full_path
    'feeds/fullschedule.php'
  end
end