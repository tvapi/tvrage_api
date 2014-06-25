class TvrageApi::Show < TvrageApi::Base
  def find(options = {})
    find_path_with_params(options).get
  end

  def find_url(options = {})
    find_path_with_params(options).url
  end

  def find_full(options = {})
    find_full_path_with_params(options).get
  end

  def find_full_url(options = {})
    find_full_path_with_params(options).url
  end

  def episodes(options = {})
    episodes_path_with_params(options).get
  end

  def episodes_url(options = {})
    episodes_path_with_params(options).url
  end

  def episode(options = {})
    episode_path_with_params(options).get
  end

  def episode_url(options = {})
    episode_path_with_params(options).url
  end

  private

  def find_path_with_params(options)
    path(find_path).params(options)
  end

  def find_path
    'showinfo.php'
  end

  def find_full_path_with_params(options)
    path(find_full_path).params(options)
  end

  def find_full_path
    'full_show_info.php'
  end

  def episodes_path_with_params(options)
    path(episodes_path).params(options)
  end

  def episodes_path
    'episode_list.php'
  end

  def episode_path_with_params(options)
    path(episode_path).params(options)
  end

  def episode_path
    'episodeinfo.php'
  end
end
