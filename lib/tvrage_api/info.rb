class TvrageApi::Info < TvrageApi::Base
  include Ov

  # Quick information about tv show
  #
  # access: FREE
  # param:
  #   find('buffy')
  # output: Faraday::Response instance with string
  let :find, String do |show|
    find(show: show)
  end

  # Quick information about tv show
  #
  # access: FREE
  # param:
  #   find('buffy', episode: '1x01')
  #   find('buffy', exact: 1)
  # output: Faraday::Response instance with string
  let :find, String, Hash do |show, optional_options|
    find(optional_options.merge(show: show))
  end

  # Quick information about tv show
  #
  # access: FREE
  # param:
  #   find(show: 'buffy')
  # output: Faraday::Response instance with string
  let :find, Hash do |options|
    find_path_with_params(options).get
  end

  # Quick information about tv show - return only url
  #
  # access: FREE
  # param (flat params):
  #   find_url(show, episode, exact)
  #   find_url('buffy', nil, nil)
  #   find_url('buffy', '1x01', nil)
  #   find_url('buffy', nil, 1)
  # param (hash params):
  #   find_url(show: 'buffy')
  #   find_url(show: 'buffy', episode: '1x01')
  #   find_url(show: 'buffy', exact: 1)
  # output: url string
  def find_url(*options)
    find_path_with_params(*options).url
  end

  # Quick information about tv show - return only url
  #
  # access: FREE
  # param:
  #   find_url('buffy')
  # output: url string
  let :find_url, String do |show|
    find_url(show: show)
  end

  # Quick information about tv show - return only url
  #
  # access: FREE
  # param:
  #   find_url('buffy', episode: '1x01')
  #   find_url('buffy', exact: 1)
  # output: url string
  let :find_url, String, Hash do |show, optional_options|
    find_url(optional_options.merge(show: show))
  end

  # Quick information about tv show - return only url
  #
  # access: FREE
  # param:
  #   find_url(show: 'buffy')
  # output: url string
  let :find_url, Hash do |options|
    find_path_with_params(options).url
  end

  private

  def find_path_with_params(*options)
    path(find_path).params(normalize_quick_info_options(*options))
  end

  def find_path
    'tools/quickinfo.php'
  end
end