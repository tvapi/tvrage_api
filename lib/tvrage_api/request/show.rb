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

  def initialize(uri, kind, options = {})
    @kind = kind
    super(uri, options)
  end

  def result
    @result ||= if @kind == :simple
      object_response('Showinfo', TvrageApi::Show)
    else
      object_response('Show', TvrageApi::Show)
    end
  end

  def data
    response
  end
end
