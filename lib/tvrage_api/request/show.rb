class TvrageApi::Request::Show < TvrageApi::Request::Base
  def self.find(id)
    new('showinfo.php', :simple, sid: id)
  end

  def self.find_full(id)
    new('full_show_info.php', :full, sid: id)
  end

  def self.episodes(id)
    new('episode_list.php', :full, sid: id)
  end

  def self.episode(series_id, season, episode)
    new('episodeinfo.php', :episode, sid: series_id, ep: "#{season}x#{episode}")
  end

  def initialize(uri, kind, options = {})
    @kind = kind
    super(uri, options)
  end

  def result
    @result ||= case @kind
      when :simple
        object_response('Showinfo', TvrageApi::Show)
      when :full
        object_response('Show', TvrageApi::Show)
      when :episode
        object_response('show', TvrageApi::Show)
    end
  end

  def data
    response
  end
end
