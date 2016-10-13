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
    phone = number.match(/\(?(\d{3})\)?[- \.]?(\d{3})[- \.]?(\d{4})/)
      return nil unless phone
    result[:area_code] = phone[1].to_s
    result[:number] = phone[2].to_s + '-' + phone[3].to_s
    result
  end

  def money(cash)
    result = {}
    result[:currency] = (cash.match(/\$/)).to_s
    reduced = cash.match(/([^$\s]\d*[\.|\S|\,]?\d*?[\.|\S|\,]?\d*[\.|\S|\,]?\d*[\.|\S|\,]?\d*[\.|\S|\,]?)/)
    reduced = reduced[0].gsub(/[\,]/, '')
    result[:amount] = reduced.to_f.round(2)
    result
  end
end
