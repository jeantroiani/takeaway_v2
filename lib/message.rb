require 'twilio-ruby'

module Message

	def delivery_time
		current_hour_plus_one	= Time.now + 3600
		delivery_time 				= "#{current_hour_plus_one.hour}:#{current_hour_plus_one.min}"
	end

	def send_message
		account_sid = 'ACa670d2bfd56bf2d6273d1321404ad244'
		auth_token 	= '60b3ffa99ba9fc8a318851d5161e51b9'
		@client 		= Twilio::REST::Client.new account_sid, auth_token
	 
		@client.account.messages.create(
		  :from => "+441565760055",
		  :to 	=> "+447462184402",
		  :body => "Thank you! Your order was placed and will be delivered before #{delivery_time}. The total is £#{self.orders.last.total}"
		)
	end

end