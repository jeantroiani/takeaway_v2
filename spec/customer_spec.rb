require 'customer'

describe'customer' do

  let(:customer) {Customer.new('jean')}

  it'has a name when created' do
    expect(customer.name).to eq('jean')
  end

  it'can store an address' do
    customer.update_address_with('Brighton,UK')
    expect(customer.address).to eq('Brighton,UK')
  end

  it'can store a phone number' do
    customer.update_phone_number_with(123)
    expect(customer.phone_number).to eq(123)
  end

  it'can store an email' do
    customer.update_email_with('jean@ruby.com')
    expect(customer.email).to eq('jean@ruby.com')
  end


end
