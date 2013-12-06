class EpisodeArray
  def self.coerce(value)
    episodes = []

    if value.respond_to?(:season)
      value.season.each do |season|
        season.episode.each do |episode|
          episodes << TvrageApi::Episode.new(episode.to_hash)
        end
      end
    end

    episodes
  end
end