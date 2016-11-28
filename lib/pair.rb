class Pair

  def initialize
    @stuff = Hash.new
  end

  def setKeyValue(key,value)
    @stuff[key] = value
  end

  def getValue(key)
    @stuff[key]
  end

end
