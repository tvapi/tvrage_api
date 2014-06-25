class TvrageApi::Update < TvrageApi::Base
  def all
    path(all_path).get
  end

  def all_url
    path(all_path).url
  end

  private

  def all_path
    'show_list.php'
  end
end
