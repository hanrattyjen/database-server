class Pair

  def initialize
    @new_hash = Hash.new
  end

  def setKeyValue(key,value)
    @new_hash[key] = value
  end

  def getValue(key)
    @new_hash[key]
  end

end
