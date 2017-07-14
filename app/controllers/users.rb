get '/users' do
  redirect '/'
end

post '/users' do
  @user = User.create(thoughts: params[:thoughts])
  erb :'spins/_new', locals: {user: @user}
end
