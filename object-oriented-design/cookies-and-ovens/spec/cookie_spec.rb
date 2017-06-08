require_relative '../cookie'

describe 'Cookie' do
  let (:cookie_args) { {:type => "Chocolate Chip", :bake_time => 15} }
  let (:cookie) {Cookie.new(cookie_args)}

  it 'has a type' do
    expect(cookie.type).to eq "Chocolate Chip"
  end

  it 'has a baking time' do
    expect(cookie.bake_time).to eq 15
  end

  it 'knows when it is still raw cookie dough' do
    cookie.update_status(2)
    expect(cookie.status).to eq :raw_cookie_dough
  end

  it 'knows when it is doughy' do
    cookie.update_status(8)
    expect(cookie.status).to eq :doughy
  end

  it 'knows when it is almost ready' do
    cookie.update_status(12)
    expect(cookie.status).to eq :almost_ready
  end

  it 'knows when it is ready' do
    cookie.update_status(15)
    expect(cookie.status).to eq :ready
  end

  it 'knows when it is burned' do
    cookie.update_status(16)
    expect(cookie.status).to eq :ready
  end
end
