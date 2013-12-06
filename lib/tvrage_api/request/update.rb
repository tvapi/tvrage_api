class TvrageApi::Request::Update < TvrageApi::Request::Base
  def self.all
    new('show_list.php')
  end

  def result
    collection_response('show', TvrageApi::Show)
  end

  def data_key
    'shows'
  end
end
