class SeasonArray
  def self.coerce(value)
    if value.season.is_a?(Array)
      value.season.map { |season| TvrageApi::Season.new(season.to_hash) }
    else
      [TvrageApi::Season.new(value.season.to_hash)]
    end
  end
end
