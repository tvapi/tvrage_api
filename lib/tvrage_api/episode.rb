class TvrageApi::Episode < TvrageApi::Base
  replace_key :epnum, :episode_number
  replace_key :seasonnum, :season_number
  replace_key :prodnum, :production_number

  coerce_key :airdate, Date
  coerce_key :episode_number, Integer
  coerce_key :season_number, Integer
end
