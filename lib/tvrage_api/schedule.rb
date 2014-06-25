class TvrageApi::Schedule < TvrageApi::Base
  def quick(options = {})
    quick_path_with_params(options).get
  end

  def quick_url(options = {})
    quick_path_with_params(options).url
  end

  def full(options = {})
    full_path_with_params(options).get
  end

  def full_url(options = {})
    full_path_with_params(options).url
  end

  private

  def quick_path_with_params(options)
    path(quick_path).params(options)
  end

  def quick_path
    'tools/quickschedule.php'
  end

  def full_path_with_params(options)
    path(full_path).params(options)
  end

  def full_path
    'feeds/fullschedule.php'
  end
end