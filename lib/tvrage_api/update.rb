class TvrageApi::Update < TvrageApi::Base
  include Ov

  # List For Last Updated Shows
  #
  # access: FREE
  # param:
  #   last
  # output: Faraday::Response instance with parsed XML string
  let :last do
    last({})
  end

  # List For Last Updated Shows
  #
  # access: FREE
  # param:
  #   hours: number of hours
  #   sort: unfortunatelly unspecified
  #   since: timestampe
  # param:
  #   last(hours: 48, sort: 'episodes', since: 1418056721)
  # output: Faraday::Response instance with parsed XML string
  let :last, Hash do |options|
    last_path_with_params(options).get
  end

  # List For Last Updated Shows - return only url
  #
  # access: FREE
  # param:
  #   last_url()
  # output: url string
  let :last_url do
    last_url({})
  end

  # List For Last Updated Shows - return only url
  #
  # access: FREE
  # param:
  #   hours: number of hours
  #   sort: unfortunatelly unspecified
  #   since: timestampe
  # param:
  #   last_url(hours: 48, sort: 'episodes', since: 1418056721)
  # output: url string
  let :last_url, Hash do |options|
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
