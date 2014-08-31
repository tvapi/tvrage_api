class TvrageApi::Info < TvrageApi::Base
  # Quick information about tv show
  #
  # access: FREE
  # param: options hash
  #   show: TV show name
  #   ep: episode name, format [Season Number]x[Episode Number, with zero at the beginning for 1-9] (optional)
  #   exact: 1, Only shows that match exactly will be given.
  # output: Faraday::Response instance with string
  def find(options = {})
    find_path_with_params(options).get
  end

  # Quick information about tv show - return only url
  #
  # access: FREE
  # param: options hash
  #   show: TV show name
  #   ep: episode name, format [Season Number]x[Episode Number, with zero at the beginning for 1-9] (optional)
  #   exact: 1, Only shows that match exactly will be given.
  # output: url string
  def find_url(options = {})
    find_path_with_params(options).url
  end

  private

  def find_path_with_params(options)
    path(find_path).params(options)
  end

  def find_path
    'tools/quickinfo.php'
  end
end