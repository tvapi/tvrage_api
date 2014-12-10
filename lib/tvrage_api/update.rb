class TvrageApi::Update < TvrageApi::Base
  # List For Last Updated Shows
  #
  # access: FREE
  # param:
  #   hours: number of hours
  #   sort: unfortunatelly unspecified
  #   since: timestampe
  # param (flat params):
  #   last(hours, sort, since)
  #   last(48, 'episodes', 1418056721)
  # param (hash params):
  #   last(hours: 48, sort: 'episodes', since: 1418056721)
  # output: Faraday::Response instance with parsed XML string
  def last(*options)
    last_path_with_params(*options).get
  end

  # List For Last Updated Shows - return only url
  #
  # access: FREE
  # param:
  #   hours: number of hours
  #   sort: unfortunatelly unspecified
  #   since: timestampe
  # param (flat params):
  #   last_url(hours, sort, since)
  #   last_url(48, 'episodes', 1418056721)
  # param (hash params):
  #   last_url(hours: 48, sort: 'episodes', since: 1418056721)
  # output: url string
  def last_url(*options)
    last_path_with_params(*options).url
  end

  private

  def last_path_with_params(*options)
    path(last_path).params(normalize_update_options(*options))
  end

  def last_path
    'feeds/last_updates.php'
  end
end
