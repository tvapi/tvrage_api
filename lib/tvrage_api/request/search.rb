class TvrageApi::Request::Search < TvrageApi::Request::Base
  def self.find(name)
    new('search.php', show: name)
  end

  def self.find_full(name)
    new('full_search.php', show: name)
  end

  def result
    collection_response('show', TvrageApi::Show)
  end
end
