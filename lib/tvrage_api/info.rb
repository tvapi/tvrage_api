class TvrageApi::Info < TvrageApi::Base
  # Quick information about tv show
  #
  # access: FREE
  # param (flat params):
  #   find(show, episode, exact)
  #   find('buffy', nil, nil)
  #   find('buffy', '1x01', nil)
  #   find('buffy', nil, 1)
  # param (hash params):
  #   find(show: 'buffy')
  #   find(show: 'buffy', episode: '1x01')
  #   find(show: 'buffy', exact: 1)
  # output: Faraday::Response instance with string
  def find(*options)
    find_path_with_params(*options).get
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

  private

  def find_path_with_params(*options)
    path(find_path).params(normalize_quick_info_options(*options))
  end

  def find_path
    'tools/quickinfo.php'
  end
end