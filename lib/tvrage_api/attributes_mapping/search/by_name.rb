require 'hashie'

class TvrageApi::AttributesMapping::Search::ByName < Hashie::Trash
  property :show, from: :name
end
