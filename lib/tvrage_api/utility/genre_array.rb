class GenreArray
  def self.coerce(value)
    if value.is_a?(Array)
      value
    else
      value.genre
    end
  end
end