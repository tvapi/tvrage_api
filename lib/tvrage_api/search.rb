class TvrageApi::Search < TvrageApi::Base
  include Ov

  # Search tv show by name
  #
  # access: FREE
  # param:
  #   by_name('buffy')
  # output: Faraday::Response instance with string
  let :by_name, String do |name|
    by_name(name: name)
  end

  # Search tv show by name
  #
  # access: FREE
  # param:
  #   by_name(name: 'buffy')
  # output: Faraday::Response instance with string
  let :by_name, Hash do |options|
    by_name_path_with_params(options).get
  end

  # Search tv show by name - return only url
  #
  # access: FREE
  # param:
  #   by_name_url('buffy')
  # output: url string
  let :by_name_url, String do |name|
    by_name_url(name: name)
  end

  # Search tv show by name - return only url
  #
  # access: FREE
  # param:
  #   by_name_url(name: 'buffy')
  # output: url string
  let :by_name_url, Hash do |options|
    by_name_path_with_params(options).url
  end

  # Detailed Search tv show by name
  #
  # access: FREE
  # param:
  #   full_by_name('buffy')
  # output: Faraday::Response instance with string
  let :full_by_name, String do |name|
    full_by_name(name: name)
  end

  # Detailed Search tv show by name
  #
  # access: FREE
  # param (hash params):
  #   full_by_name(name: 'buffy')
  # output: Faraday::Response instance with string
  let :full_by_name, Hash do |options|
    full_by_name_path_with_params(options).get
  end

  # Detailed Search tv show by name - return only url
  #
  # access: FREE
  # param:
  #   full_by_name_url('buffy')
  # output: url string
  let :full_by_name_url, String do |name|
    full_by_name_url(name: name)
  end

  # Detailed Search tv show by name - return only url
  #
  # access: FREE
  # param:
  #   full_by_name_url(name: 'buffy')
  # output: url string
  let :full_by_name_url, Hash do |options|
    full_by_name_path_with_params(options).url
  end

  private

  def mapped_options(options)
    TvrageApi::AttributesMapping::Search::ByName.new(options).to_hash
  end

  def by_name_path_with_params(options)
    path(by_name_path).params(mapped_options(options))
  end

  def by_name_path
    'feeds/search.php'
  end

  def full_by_name_path_with_params(options)
    path(full_by_name_path).params(mapped_options(options))
  end

  def full_by_name_path
    'feeds/full_search.php'
  end
end
