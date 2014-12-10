class TvrageApi::Search < TvrageApi::Base
  # Search tv show by name
  #
  # access: FREE
  # param (flat params):
  #   by_name(name)
  #   by_name('buffy')
  # param (hash params):
  #   by_name(name: 'buffy')
  # output: Faraday::Response instance with string
  def by_name(*options)
    by_name_path_with_params(*options).get
  end

  # Search tv show by name - return only url
  #
  # access: FREE
  # param (flat params):
  #   by_name_url(name)
  #   by_name_url('buffy')
  # param (hash params):
  #   by_name_url(name: 'buffy')
  # output: url string
  def by_name_url(*options)
    by_name_path_with_params(*options).url
  end

  # Detailed Search tv show by name
  #
  # access: FREE
  # param (flat params):
  #   full_by_name(name)
  #   full_by_name('buffy')
  # param (hash params):
  #   full_by_name(name: 'buffy')
  # output: Faraday::Response instance with string
  def full_by_name(*options)
    full_by_name_path_with_params(*options).get
  end

  # Detailed Search tv show by name - return only url
  #
  # access: FREE
  # param (flat params):
  #   full_by_name_url(name)
  #   full_by_name_url('buffy')
  # param (hash params):
  #   full_by_name_url(name: 'buffy')
  # output: url string
  def full_by_name_url(*options)
    full_by_name_path_with_params(*options).url
  end

  private

  def by_name_path_with_params(*options)
    path(by_name_path).params(normalize_search_options(*options))
  end

  def by_name_path
    'feeds/search.php'
  end

  def full_by_name_path_with_params(*options)
    path(full_by_name_path).params(normalize_search_options(*options))
  end

  def full_by_name_path
    'feeds/full_search.php'
  end
end
