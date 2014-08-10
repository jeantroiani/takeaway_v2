require 'dish'

describe 'dish' do

  let (:dish) {Dish.new('Arepa',5)}


  it 'has a name when created' do
    expect(dish.name).to eq('Arepa')
  end

  it 'has a price when created' do
    expect(dish.price).to eq(5)
  end

  it 'has description' do
    dish.add_description('Bun made')
    expect(dish.description).to eq('Bun made')
  end

  it 'has an array of ingredients' do
    expect(dish.ingredients).to eq([])
  end

  it 'accepts ingredients in the list of ingredients' do
    expect(dish.ingredients).to eq([])
    dish.add_ingredient(:cheese)
    expect(dish.ingredients).to eq([:cheese])
  end



end
