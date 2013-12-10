class TvrageApi::Client
  def search
    @search ||= TvrageApi::Search.new
  end

  def show
    @show ||= Tvrage::Show.new
  end

  def update
    @show ||= Tvrage::Update.new
  end
end
