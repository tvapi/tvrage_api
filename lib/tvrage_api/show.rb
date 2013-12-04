class TvrageApi::Show < TvrageApi::Base
  replace_key :showid, :show_id

  coerce_key :akas, AkaArray
  coerce_key :ended, Integer
  coerce_key :genres, GenreArray
  coerce_key :network, TvrageApi::Element
  coerce_key :runtime, Integer
  coerce_key :seasons, Integer
  coerce_key :show_id, Integer
  coerce_key :started, Integer
end

# akas=#<TvrageApi::Show aka=[#<TvrageApi::Show __content__="Buffy & vampyrerna" country="SE">, #<TvrageApi::Show __content__="Buffy - Im Bann der Dämonen" country="DE">, #<TvrageApi::Show __content__="Buffy - Vampyrenes skrekk" country="NO">, #<TvrageApi::Show __content__="Buffy a vámpírok réme" country="HU">, #<TvrageApi::Show __content__="Buffy Contre les Vampires" country="FR">, #<TvrageApi::Show __content__="Buffy l'Ammazza Vampiri" country="IT">, #<TvrageApi::Show __content__="Buffy postrach wampirów" country="PL">, #<TvrageApi::Show __content__="Buffy, a Caça-Vampiros" country="BR">, #<TvrageApi::Show __content__="Buffy, a Caçadora de Vampiros" country="PT">, #<TvrageApi::Show __content__="Buffy, Cazavampiros" country="ES">, #<TvrageApi::Show __content__="Buffy, ubojica vampira" country="HR">, #<TvrageApi::Show __content__="Buffy, vampyyrintappaja" country="FI">, #<TvrageApi::Show __content__="Vampiiritapja Buffy" country="EE">, #<TvrageApi::Show __content__="Vampírubaninn Buffy" country="IS">, #<TvrageApi::Show __content__="Баффи – истребительница вампиров" country="RU">]>
# network=#<TvrageApi::Show __content__="UPN" country="US">

# network=#<TvrageApi::Show __content__="iTunes" country="US">

# network=#<TvrageApi::Show __content__="FOX" country="US">
