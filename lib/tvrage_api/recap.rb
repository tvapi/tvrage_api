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
  # param: options hash
  #   show: TV show ID
  # output: Faraday::Response instance with parsed XML string
  def show(options = {})
    show_path_with_params(options).get
  end

  # Recaps From Selected Show - return only url
  #
  # access: FREE
  # param: options hash
  #   show: TV show ID
  # output: url string
  def show_url(options = {})
    show_path_with_params(options).url
  end

  # Latest Recaps
  #
  # access: FREE
  # param: options hash
  #   days: last x days (default 30)
  # output: Faraday::Response instance with parsed XML string
  def last(options = {})
    last_path_with_params(options).get
  end

  # Latest Recaps - return only url
  #
  # access: FREE
  # param: options hash
  #   days: last x days (default 30)
  # output: url string
  def last_url(options = {})
    last_path_with_params(options).url
  end

  private

  def all_path
    'recaps/all_recaps.php'
  end

  def show_path_with_params(options)
    path(show_path).params(options)
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