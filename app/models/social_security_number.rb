class SocialSecurityNumber
    
  def inefficiently_make_a_social_security_number
      default = "XXX-XX-XXXX"
      new_number = default.split("").map do |char|
        char.gsub("X", SecureRandom.random_number(10).to_s)
      end
      new_number.join
  end
  
end
