class TvrageApi::Show < TvrageApi::Base
  # Show Info
  #
  # access: FREE
  # param (flat params):
  #   find(id)
  #   find(123)
  # param (hash params):
  #   find(id: 123)
  # output: Faraday::Response instance with string
  def find(*options)
    find_path_with_params(*options).get
  end

  # Show Info - return only url
  #
  # access: FREE
  # param (flat params):
  #   find_url(id)
  #   find_url(123)
  # param (hash params):
  #   find_url(id: 123)
  # output: url string
  def find_url(*options)
    find_path_with_params(*options).url
  end

  # Show Info + Episode List
  #
  # access: FREE
  # param (flat params):
  #   find_full(id)
  #   find_full(123)
  # param (hash params):
  #   find_full(id: 123)
  # output: Faraday::Response instance with string
  def find_full(*options)
    find_full_path_with_params(*options).get
  end

  # Show Info + Episode List - return only url
  #
  # access: FREE
  # param (flat params):
  #   find_full_url(id)
  #   find_full_url(123)
  # param (hash params):
  #   find_full_url(id: 123)
  # output: url string
  def find_full_url(*options)
    find_full_path_with_params(*options).url
  end

  # Episode List
  #
  # access: FREE
  # param (flat params):
  #   episodes(id)
  #   episodes(123)
  # param (hash params):
  #   episodes(id: 123)
  # output: Faraday::Response instance with string
  def episodes(*options)
    episodes_path_with_params(*options).get
  end


  # Episode List
  #
  # access: FREE
  # param (flat params):
  #   episodes_url(id)
  #   episodes_url(123)
  # param (hash params):
  #   episodes_url(id: 123)
  # output: url string
  def episodes_url(*options)
    episodes_path_with_params(*options).url
  end

  # Episode Info
  #
  # access: FREE
  # param (flat params):
  #   episode(show_id, episode)
  #   episode(123, '1x01')
  # param (hash params):
  #   episode(show_id: 123, episode: '1x01')
  # output: Faraday::Response instance with string
  def episode(*options)
    episode_path_with_params(*options).get
  end


  # Episode Info - return only url
  #
  # access: FREE
  # param (flat params):
  #   episode_url(show_id, episode)
  #   episode_url(123, '1x01')
  # param (hash params):
  #   episode_url(show_id: 123, episode: '1x01')
  # output: url string
  def episode_url(*options)
    episode_path_with_params(*options).url
  end

  # Full Show List
  #
  # access: FREE
  # output: Faraday::Response instance with string
  def all
    path(all_path).get
  end


  # Full Show List - return only url
  #
  # access: FREE
  # output: url string
  def all_url
    path(all_path).url
  end

  private

  def find_path_with_params(*options)
    path(find_path).params(normalize_show_options(*options))
  end

  def find_path
    'feeds/showinfo.php'
  end

  def find_full_path_with_params(*options)
    path(find_full_path).params(normalize_show_options(*options))
  end

  def find_full_path
    'feeds/full_show_info.php'
  end

  def episodes_path_with_params(*options)
    path(episodes_path).params(normalize_show_options(*options))
  end

  def episodes_path
    'feeds/episode_list.php'
  end

  def episode_path_with_params(*options)
    path(episode_path).params(normalize_show_with_episode_options(*options))
  end

  def episode_path
    'feeds/episodeinfo.php'
  end

  def all_path
    'feeds/show_list.php'
  end
end
