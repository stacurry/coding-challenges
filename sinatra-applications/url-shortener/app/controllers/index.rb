get '/' do
  erb :index
end

post '/urls' do
  @address = Address.create(long_url: params[:long_url])
  if @address.save
    redirect '/'
  else
    @errors = @address.errors[:long_url]
    erb :index
  end
end

get '/:short_url' do
  @address = Address.find_by(short_url: params[:short_url])
  @address.update_click_count
  redirect "#{@address.long_url}"
end
