require_relative 'message'

class Restaurant

	include Message

	attr_accessor :menu
	attr_accessor :orders

		def initialize
			@menu
			@orders	= []	
		end

		def update_menu_with(menu)
			@menu = menu
		end

		def add_order(request)
			@orders << request
		end

end
