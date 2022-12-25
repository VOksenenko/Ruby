class PhoneFormatException < StandardError
  attr_reader :number
  def initialize(number)
    @number = number
    msg = "Phone number #{@number} is incorrect. You should enter phone in format +38dddddddddd"
    super(msg)
  end
end

module Validation
  def phone_valid?(number)
    number =~ /\+38\d{10}/ ? true : false
  end
end

class User
  include Validation
  attr_reader :name
  attr_writer :phone
  
  def initialize(name)
    @name = name
  end

  def phone=(phone)
   raise PhoneFormatException.new(phone) unless phone_valid?(phone)
   @phone = phone
  end
end
