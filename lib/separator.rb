class Separator
  def words(string)
    result = string.scan(/\w+\S\w+/)
    if result != []
      result
    else
      nil
    end
  end

  def phone_number(number)
    result = {}
    match = number.match(/\(?(\d{3})\)?[- \.]?(\d{3})[- \.]?(\d{4})/)
      return nil unless match
    result[:area_code] = match[1].to_s
    result[:number] = match[2].to_s + '-' + match[3].to_s
    result
  end
end
