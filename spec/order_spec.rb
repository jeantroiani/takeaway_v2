require 'order'

describe 'order' do

  let(:order) {Order.new}

 it 'can receive a dish to the order' do
   expect(order.list).to eq([])
   order.update_order_with(:arepa)
   expect(order.list).to eq([:arepa])
 end

 it 'can receive more than one duplicate to the order' do
   expect(order.list).to eq([])
   order.update_order_with(:arepa,2)
   expect(order.list).to eq([:arepa,:arepa])
 end

 it 'can remove an item from the list' do
   order.update_order_with(:arepa)
   expect(order.list).to eq([:arepa])
   order.remove_this(:arepa)
   expect(order.list).to eq([])
 end

 it 'can remove many items from the list' do
   order.update_order_with(:arepa)
   order.update_order_with(:patacon)
   expect(order.list).to eq([:arepa,:patacon])
   order.remove_this(:arepa)
   expect(order.list).to eq([:patacon])
 end

 it 'has an amount of dishes ordered' do
   order.update_order_with(:arepa,3)
   expect(order.number_of_items).to eq(3)
 end

 it 'can provide a total' do
   arepa    = double("arepa"    ,price: 5)
   patacon  = double("patacon"  ,price: 5)
   quesillo = double("quesillo" ,price: 5)
   order.update_order_with(arepa, 3)
   expect(order.total).to eq(15)
 end

 it 'has a customer' do
  customer = double(:customer ,name:'Jean')
  order.update_customer_with(customer)
  expect(order.customer).to eq(customer)
 end

end
