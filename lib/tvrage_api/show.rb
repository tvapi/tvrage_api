class TvrageApi::Show < TvrageApi::Base
  replace_key :Episodelist, :episode_list
  replace_key :showid, :show_id
  replace_key :totalseasons, :total_seasons

  coerce_key :akas, AkaArray
  coerce_key :ended, DateOrInteger
  coerce_key :episode_list, EpisodeArray
  coerce_key :genres, GenreArray
  coerce_key :network, TvrageApi::Element
  coerce_key :runtime, Integer
  coerce_key :seasons, Integer
  coerce_key :show_id, Integer
  coerce_key :startdate, Date
  coerce_key :started, Integer
  coerce_key :total_seasons, Integer
end
