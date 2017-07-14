
post '/users/:id/spins' do
  @user = User.find(params[:id])
  redirect "/users/#{@user.id}/spins"
end

get '/users/:id/spins' do
  @user = User.find(params[:id])
  @feeling = Feeling.find_by(name: @user.top_feeling)
  erb :'spins/_show'
end
