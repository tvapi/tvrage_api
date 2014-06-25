class TvrageApi::Recap < TvrageApi::Base
  def all
    path(all_path).get
  end

  def all_url
    path(all_path).url
  end

  def show(options = {})
    show_path_with_params(options).get
  end

  def show_url(options = {})
    show_path_with_params(options).url
  end

  def last(options = {})
    last_path_with_params(options).get
  end

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