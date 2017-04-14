class AdminNotifierMailer < ActionMailer::Base
  default :from => 'any_from_address@example.com'
  
  # send a number to the admin
  def send_number_to_admin(admin)
    @admin = admin
    mail (:to => @admin.email,
    :subject => 'Ring Ring Ring Ring Ring')
  end 
end
