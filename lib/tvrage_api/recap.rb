class TvrageApi::Recap < TvrageApi::Base
  include Ov

  # All recaps
  #
  # access: FREE
  # output: Faraday::Response instance with parsed XML string
  def all
    path(all_path).get
  end

  # All recaps - return only url
  #
  # access: FREE
  # output: url string
  def all_url
    path(all_path).url
  end

  # Recaps From Selected Show
  #
  # access: FREE
  # param:
  #   show('1234')
  # output: Faraday::Response instance with parsed XML string
  let :show, Any do |id|
    show(id: id)
  end

  # Recaps From Selected Show
  #
  # access: FREE
  # param:
  #   show(id: '1234')
  # output: Faraday::Response instance with parsed XML string
  let :show, Hash do |options|
    show_path_with_params(options).get
  end

  # Recaps From Selected Show - return only url
  #
  # access: FREE
  # param:
  #   show_url(1234)
  # output: url string
  let :show_url, Any do |id|
    show_url(id: id)
  end

  # Recaps From Selected Show - return only url
  #
  # access: FREE
  # param:
  #   show_url(id: 1234)
  # output: url string
  let :show_url, Hash do |options|
    show_path_with_params(options).url
  end

  # Latest Recaps
  #
  # access: FREE
  # param:
  #   last(30)
  # output: Faraday::Response instance with parsed XML string
  let :last, Any do |days|
    last(days: days)
  end

  # Latest Recaps
  #
  # access: FREE
  # param:
  #   last(days: 30)
  # output: Faraday::Response instance with parsed XML string
  let :last, Hash do |options|
    last_path_with_params(options).get
  end

  # Latest Recaps - return only url
  #
  # access: FREE
  # param:
  #   last_url(30)
  # output: url string
  let :last_url, Any do |days|
    last_url(days: days)
  end

  # Latest Recaps - return only url
  #
  # access: FREE
  # param:
  #   last_url(days: 30)
  # output: url string
  let :last_url, Hash do |options|
    last_path_with_params(options).url
  end

  private

  def all_path
    'recaps/all_recaps.php'
  end

  def show_path_with_params(options)
    path(show_path).params(show_mapped_options(options))
  end

  def show_mapped_options(options)
    TvrageApi::AttributesMapping::Recap::Show.new(options).to_hash
  end

  def show_path
    'recaps/show_recaps.php'
  end

  def last_path_with_params(options)
    path(last_path).params(options)
  end

  def last_path
    'recaps/last_recaps.php'
  end
end