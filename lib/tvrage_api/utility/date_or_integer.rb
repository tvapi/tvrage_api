class DateOrInteger
  def self.coerce(value)
    if value.match('/')
      Date.parse(value)
    else
      value.to_i
    end
  end
end
