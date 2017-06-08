require_relative '../oven'

describe 'Oven' do
  let (:oven) { Oven.new }
  let (:cc_cookie_args) { {:type => "Chocolate Chip", :bake_time   => 15} }

  it 'can hold cookies' do
    15.times do
      oven.cookies << Cookie.new(cc_cookie_args)
    end

    expect(oven.cookies.length).to eq 15
    expect(oven.cookies[0].class).to be Cookie
  end

  it 'can keep track of baking time elapsed' do
    5.times { oven.bake_cookies }
    expect(oven.time_elapsed).to eq 5
  end
end
