class TvrageApi::Update < TvrageApi::Base
  def all
    self.class.get('show_list.php')
  end
end
