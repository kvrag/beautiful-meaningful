post '/users' do
  @user = User.new(thoughts: params[:thoughts])
  erb :'spins/_new', layout: false, locals: {user: @user}
end
