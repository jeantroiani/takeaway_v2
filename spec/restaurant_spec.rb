require 'restaurant'

describe 'restaurant' do

	let('restaurant'){Restaurant.new}

	it 'can have a menu assigned' do
		menu = double :menu
		restaurant.update_menu_with(menu)
		expect(restaurant.menu).to eq(menu)
	end
	
	it 'can have a menu assigned' do
		order = double :order
		restaurant.add_order(order)
		expect(restaurant.orders).to eq([order])
	end

	xit 'can send a message to client when order is ready' do
	end




end
