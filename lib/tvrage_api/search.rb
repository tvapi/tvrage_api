class TvrageApi::Search < TvrageApi::Base
  def by_name(name)
    get('search.php', show: name).response
  end

  def full_by_name(name)
    get('full_search.php', show: name).response
  end
end
