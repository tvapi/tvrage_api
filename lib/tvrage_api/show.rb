class TvrageApi::Show < TvrageApi::Base
  def find(id)
    get('showinfo.php', sid: id).response
  end

  def find_full(id)
    get('full_show_info.php', sid: id).response
  end

  def episodes(show_id)
    get('episode_list.php', sid: show_id).response
  end

  def episode(series_id, season, episode)
    get('episodeinfo.php', sid: series_id, ep: "#{season}x#{episode}").response
  end
end
