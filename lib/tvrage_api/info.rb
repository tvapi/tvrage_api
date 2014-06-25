class TvrageApi::Info < TvrageApi::Base
  def find(options = {})
    find_path_with_params(options).get
  end

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