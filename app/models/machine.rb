class Machine
  include SendGrid
  
  def send_number(email)
    obfuscator = Obfuscator.new
    number = SocialSecurityNumber.new

    from = Email.new(email: email)
    to = Email.new(email: email)
    subject = obfuscator.make_up_some_text
    content = Content.new(type: 'text/plain', value: "#{number.inefficiently_make_a_social_security_number}")
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

end