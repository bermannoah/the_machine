class SocialSecurityNumber
  
  def number_generator
    SecureRandom.random_number(10)
  end
  
  def inefficiently_make_a_social_security_number
      default = "XXX-XX-XXXX"
      random_number = number_generator
      default.gsub("X", random_number)
      default
  end
  
end