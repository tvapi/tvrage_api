class TvrageApi::Search < TvrageApi::Base
  def by_name(options = {})
    by_name_path_with_params(options).get
  end

  def by_name_url(options = {})
    by_name_path_with_params(options).url
  end

  def full_by_name(options = {})
    full_by_name_path_with_params(options).get
  end

  def full_by_name_url(options = {})
    full_by_name_path_with_params(options).url
  end

  private

  def by_name_path_with_params(options)
    path(by_name_path).params(options)
  end

  def by_name_path
    'search.php'
  end

  def full_by_name_path_with_params(options)
    path(full_by_name_path).params(options)
  end

  def full_by_name_path
    'full_search.php'
  end
end
