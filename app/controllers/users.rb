post '/users' do
  @user = User.new(thoughts: params[:thoughts])
  @feeling = Feeling.find_by(name: @user.top_feeling)
  erb :'spins/_show', locals: {user: @user, feeling: @feeling}
end
