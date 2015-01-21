class TvrageApi::Show < TvrageApi::Base
  include Ov

  # Show Info
  #
  # access: FREE
  # param:
  #   find(123)
  # output: Faraday::Response instance with string
  let :find, Any do |id|
    find(id: id)
  end

  # Show Info
  #
  # access: FREE
  # param:
  #   find(id: 123)
  # output: Faraday::Response instance with string
  let :find, Hash do |options|
    find_path_with_params(options).get
  end

  # Show Info - return only url
  #
  # access: FREE
  # param:
  #   find_url(123)
  # output: url string
  let :find_url, Any do |id|
    find_url(id: id)
  end

  # Show Info - return only url
  #
  # access: FREE
  # param:
  #   find_url(id: 123)
  # output: url string
  let :find_url, Hash do |options|
    find_path_with_params(options).url
  end

  # Show Info + Episode List
  #
  # access: FREE
  # param:
  #   find_full(123)
  # output: Faraday::Response instance with string
  let :find_full, Any do |id|
    find_full(id: id)
  end

  # Show Info + Episode List
  #
  # access: FREE
  # param:
  #   find_full(id: 123)
  # output: Faraday::Response instance with string
  let :find_full, Hash do |options|
    find_full_path_with_params(options).get
  end

  # Show Info + Episode List - return only url
  #
  # access: FREE
  # param:
  #   find_full_url(123)
  # output: url string
  let :find_full_url, Any do |id|
    find_full_url(id: id)
  end

  # Show Info + Episode List - return only url
  #
  # access: FREE
  # param:
  #   find_full_url(id: 123)
  # output: url string
  let :find_full_url, Hash do |options|
    find_full_path_with_params(options).url
  end

  # Episode List
  #
  # access: FREE
  # param:
  #   episodes(123)
  # output: Faraday::Response instance with string
  let :episodes, Any do |id|
    episodes(id: id)
  end

  # Episode List
  #
  # access: FREE
  # param:
  #   episodes(id: 123)
  # output: Faraday::Response instance with string
  let :episodes, Hash do |options|
    episodes_path_with_params(options).get
  end

  # Episode List
  #
  # access: FREE
  # param:
  #   episodes_url(123)
  # output: url string
  let :episodes_url, Any do |id|
    episodes_url(id: id)
  end

  # Episode List
  #
  # access: FREE
  # param:
  #   episodes_url(id: 123)
  # output: url string
  let :episodes_url, Hash do |options|
    episodes_path_with_params(options).url
  end

  # Episode Info
  #
  # access: FREE
  # param:
  #   episode(123, '1x01')
  # output: Faraday::Response instance with string
  let :episode, Any, String do |show_id, episode|
    episode(show_id: show_id, episode: episode)
  end

  # Episode Info
  #
  # access: FREE
  # param:
  #   episode(show_id: 123, episode: '1x01')
  # output: Faraday::Response instance with string
  let :episode, Hash do |options|
    episode_path_with_params(options).get
  end

  # Episode Info - return only url
  #
  # access: FREE
  # param:
  #   episode_url(123, '1x01')
  # output: url string
  let :episode_url, Any, String do |show_id, episode|
    episode_url(show_id: show_id, episode: episode)
  end

  # Episode Info - return only url
  #
  # access: FREE
  # param:
  #   episode_url(show_id: 123, episode: '1x01')
  # output: url string
  let :episode_url, Hash do |options|
    episode_path_with_params(options).url
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

  def find_mapped_options(options)
    TvrageApi::AttributesMapping::Show::Find.new(options).to_hash
  end

  def find_path_with_params(options)
    path(find_path).params(find_mapped_options(options))
  end

  def find_path
    'feeds/showinfo.php'
  end

  def find_full_path_with_params(options)
    path(find_full_path).params(find_mapped_options(options))
  end

  def find_full_path
    'feeds/full_show_info.php'
  end

  def episodes_path_with_params(options)
    path(episodes_path).params(find_mapped_options(options))
  end

  def episodes_path
    'feeds/episode_list.php'
  end

  def episode_mapped_options(options)
    TvrageApi::AttributesMapping::Show::Episode.new(options).to_hash
  end

  def episode_path_with_params(options)
    path(episode_path).params(episode_mapped_options(options))
  end

  def episode_path
    'feeds/episodeinfo.php'
  end

  def all_path
    'feeds/show_list.php'
  end
end
