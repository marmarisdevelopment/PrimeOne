module PoliciesHelper
  def displayPremium(value)
    if checkValid(value)
      number_to_currency(value,format:"%n", precision:0)
    else
      "Excluded"
    end
  end

  def checkValid(value)
    if value != nil && !value.blank? && value.to_i != 0
      true
    else
      false
    end
  end

end
