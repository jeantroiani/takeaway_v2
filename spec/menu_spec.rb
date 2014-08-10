require 'menu'

describe 'Menu' do
  let(:menu) {Menu.new}

  it 'has an array of main dishes dishes' do
    expect(menu.main_dishes).to eq([])
  end

  it 'can add a main dish to the list ' do
    expect(menu.main_dishes).to eq([])
    menu.add_main_dish(:arepa)
    expect(menu.main_dishes).to eq([:arepa])
  end

  it 'can add more than one dish to the list' do
    expect(menu.main_dishes).to eq([])
    menu.add_main_dish(:arepa,:patacon)
    expect(menu.main_dishes).to eq([:arepa,:patacon])
  end


  it 'has an array of entrees' do
    expect(menu.entrees).to eq([])
  end

  it 'can add an entree to the list ' do
    expect(menu.entrees).to eq([])
    menu.add_entree(:quesillo)
    expect(menu.entrees).to eq([:quesillo])
  end

  it 'can add more than one entree to the list' do
    expect(menu.entrees).to eq([])
    menu.add_entree(:tostones,:empanadas)
    expect(menu.entrees).to eq([:tostones,:empanadas])
  end


  it 'has an array of beverages ' do
    expect(menu.beverages).to eq([])
  end

  it 'can add a beverage to the list' do
    expect(menu.beverages).to eq([])
    menu.add_beverage(:lemonade)
    expect(menu.beverages).to eq([:lemonade])
  end

  it 'can add more than one beverage to the list' do
    expect(menu.beverages).to eq([])
    menu.add_beverage(:lemonade,:orange_juice)
    expect(menu.beverages).to eq([:lemonade,:orange_juice])
  end


end
