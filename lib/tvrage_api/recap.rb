class TvrageApi::Recap < TvrageApi::Base
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
  # param (flat params):
  #   show(id)
  #   show('1234')
  # param (hash params):
  #   show(id: '1234')
  # output: Faraday::Response instance with parsed XML string
  def show(*options)
    show_path_with_params(*options).get
  end

  # Recaps From Selected Show - return only url
  #
  # access: FREE
  # param (flat params):
  #   show_url(id)
  #   show_url(1234)
  # param (hash params):
  #   show_url(id: 1234)
  # output: url string
  def show_url(*options)
    show_path_with_params(*options).url
  end

  # Latest Recaps
  #
  # access: FREE
  # param (flat params):
  #   last(days)
  #   last(30)
  # param (hash params):
  #   last(days: 30)
  # output: Faraday::Response instance with parsed XML string
  def last(*options)
    last_path_with_params(*options).get
  end

  # Latest Recaps - return only url
  #
  # access: FREE
  # param (flat params):
  #   last_url(days)
  #   last_url(30)
  # param (hash params):
  #   last_url(days: 30)
  # output: url string
  def last_url(*options)
    last_path_with_params(*options).url
  end

  private

  def all_path
    'recaps/all_recaps.php'
  end

  def show_path_with_params(*options)
    path(show_path).params(normalize_recaps_options(*options))
  end

  def show_path
    'recaps/show_recaps.php'
  end

  def last_path_with_params(*options)
    path(last_path).params(normalize_last_recaps_options(*options))
  end

  def last_path
    'recaps/last_recaps.php'
  end
end