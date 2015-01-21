class TvrageApi::Schedule < TvrageApi::Base
  include Ov

  # Quick access to TV schedule
  #
  # access: FREE
  # param:
  #   quick
  # output: Faraday::Response instance with string
  let :quick do
    quick({})
  end

  # Quick access to TV schedule
  #
  # access: FREE
  # param:
  #   quick('US')
  # output: Faraday::Response instance with string
  let :quick, String do |country|
    quick(country: country)
  end

  # Quick access to TV schedule
  #
  # access: FREE
  # param:
  #   quick(country: 'US')
  # output: Faraday::Response instance with string
  let :quick, Hash do |options|
    quick_path_with_params(options).get
  end

  # Quick access to TV schedule - return only url
  #
  # access: FREE
  # param:
  #   quick_url
  # output: url string
  let :quick_url do
    quick_url({})
  end

  # Quick access to TV schedule - return only url
  #
  # access: FREE
  # param:
  #   quick_url('US')
  # output: url string
  let :quick_url, String do |country|
    quick_url(country: country)
  end

  # Quick access to TV schedule - return only url
  #
  # access: FREE
  # param:
  #   quick_url(country: 'US')
  # output: url string
  let :quick_url, Hash do |options|
    quick_path_with_params(options).url
  end

  # Full Schedule
  #
  # access: FREE
  # param:
  #   full
  # output: Faraday::Response instance with parsed XML string
  let :full do
    full({})
  end

  # Full Schedule
  #
  # access: FREE
  # param:
  #   full(country: 'US', 24_format: 1)
  # output: Faraday::Response instance with parsed XML string
  let :full, Hash do |options|
    full_path_with_params(options).get
  end

  # Full Schedule - return only url
  #
  # access: FREE
  # param:
  #   full_url
  # output: url string
  let :full_url do
    full_url({})
  end

  # Full Schedule - return only url
  #
  # access: FREE
  # param:
  #   full_url(country: 'US', 24_format: 1)
  # output: url string
  let :full_url, Hash do |options|
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