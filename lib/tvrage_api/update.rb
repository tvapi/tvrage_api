class TvrageApi::Update < TvrageApi::Base
  def all
    get('show_list.php').response
  end
end
