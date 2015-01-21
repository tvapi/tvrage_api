require 'hashie'

class TvrageApi::AttributesMapping::Recap::Show < Hashie::Trash
  property :show, from: :id
end
