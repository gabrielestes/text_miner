class Separator
  def words(string)
    result = string.scan(/\w+\S\w+/)
    if result != []
      result
    else
      nil
    end
  end

  
end
