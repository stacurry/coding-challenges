require_relative '../baker'

describe 'Baker' do
  let (:oven) {Oven.new}
  let (:cc_cookie_args) { {:type        => "Chocolate Chip",
               :bake_time   => 15} }
  let (:pb_cookie_args) { {:type        => "Peanut Butter",
               :bake_time   => 10} }

  it 'can place cookies in an oven' do
    Baker.place_cookies_in_oven(cc_cookie_args, 6, oven)
    Baker.place_cookies_in_oven(pb_cookie_args, 6, oven)

    expect(oven.cookies.length).to eq 12
    expect(oven.cookies[0].type).to eq "Chocolate Chip"
    expect(oven.cookies[6].type).to eq "Peanut Butter"
  end

  it 'can check cookie status' do
  end

  it 'can remove cookies from an oven' do
  end
end
