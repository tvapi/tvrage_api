class AkaArray
  def self.coerce(value)
    if value.is_a?(Array)
      value
    else
      value.aka.map{ |aka| TvrageApi::Element.new(content: aka.__content__, country: aka.country) }
    end
  end
end