class TvrageApi::Update < TvrageApi::Base
  # List For Last Updated Shows
  #
  # access: FREE
  # param: options hash
  #   hours: number of hours (optional)
  #   sort: unfortunatelly unspecified (optional)
  #   since: timestampe (optional)
  # output: Faraday::Response instance with parsed XML string
  def last(options = {})
    last_path_with_params(options).get
  end

  # List For Last Updated Shows - return only url
  #
  # access: FREE
  # param: options hash
  #   hours: number of hours (optional)
  #   sort: unfortunatelly unspecified (optional)
  #   since: timestampe (optional)
  # output: url string
  def last_url(options = {})
    last_path_with_params(options).url
  end

  private

  def last_path_with_params(options)
    path(last_path).params(options)
  end

  def last_path
    'feeds/last_updates.php'
  end
end
