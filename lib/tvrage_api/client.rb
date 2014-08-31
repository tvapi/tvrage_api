class TvrageApi::Client
  attr_reader :config

  def initialize(config = {})
    @config = config

    @config[:adapter] ||= :net_http
  end

  def search
    @search ||= TvrageApi::Search.new(config)
  end

  def show
    @show ||= TvrageApi::Show.new(config)
  end

  def update
    @update ||= TvrageApi::Update.new(config)
  end

  def info
    @info ||= TvrageApi::Info.new(config)
  end

  def schedule
    @schedule ||= TvrageApi::Schedule.new(config)
  end

  def recap
    @recap ||= TvrageApi::Recap.new(config)
  end
end
