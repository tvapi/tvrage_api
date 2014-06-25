class TvrageApi::Update < TvrageApi::Base
  def last(options = {})
    last_path_with_params(options).get
  end

  def last_url(options = {})
    last_path_with_params(options).url
  end

  private

  def last_path_with_params(options)
    path(last_path).params(options)
  end

  def last_path
    'feeds/last_updates.php'
  end
end
