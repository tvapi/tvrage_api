class TvrageApi::Client
  attr_reader :options

  def initialize(options = {})
    @options = options

    @options[:adapter] ||= :net_http
  end

  def search
    @search ||= TvrageApi::Search.new(self)
  end

  def show
    @show ||= TvrageApi::Show.new(self)
  end

  def update
    @show ||= TvrageApi::Update.new(self)
  end
end
