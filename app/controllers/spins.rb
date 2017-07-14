
post '/users/:id/spins' do
  @user = User.find(params[:id])
  @feeling = Feeling.create(name: @user.top_feeling)
  @spin = Spin.create(feeling: @feeling)
  redirect "/users/#{@user.id}/spins"
end

get '/users/:id/spins' do
  @user = User.find(params[:id])
  erb :'spins/_show'
end
