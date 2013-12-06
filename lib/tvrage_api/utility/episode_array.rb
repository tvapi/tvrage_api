class EpisodeArray
  def self.coerce(value)
    value.map { |episode| TvrageApi::Episode.new(episode.to_hash) }
  end
end