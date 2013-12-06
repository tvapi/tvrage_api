class TvrageApi::Season < TvrageApi::Base
  replace_key :episode, :episodes

  coerce_key :episodes, EpisodeArray
  coerce_key :no, Integer
end
