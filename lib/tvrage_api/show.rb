class TvrageApi::Show < TvrageApi::Base
  def find(id)
    self.class.get('showinfo.php', sid: id)
  end

  def find_full(id)
    self.class.get('full_show_info.php', sid: id)
  end

  def episodes(show_id)
    self.class.get('episode_list.php', sid: show_id)
  end

  def episode(series_id, season, episode)
    self.class.get('episodeinfo.php', sid: series_id, ep: "#{season}x#{episode}")
  end
end
