class TvrageApi::Client
  def search
    @search ||= TvrageApi::Search.new
  end

  def show
    @show ||= TvrageApi::Show.new
  end

  def update
    @show ||= TvrageApi::Update.new
  end
end
