class TvrageApi::Search < TvrageApi::Base
  def by_name(name)
    self.class.get('search.php', show: name)
  end

  def full_by_name(name)
    self.class.get('full_search.php', show: name)
  end
end
