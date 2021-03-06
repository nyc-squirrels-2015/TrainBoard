get '/' do
  erb :welcome
end

get '/signup' do
  erb :"auth/signup"
end

post '/signup' do
 @new_user = User.new(params[:user])
 if @new_user.save
  session[:user_id] = @new_user.id
  redirect '/lines'
 else
   redirect '/signup'
 end
end

get '/login' do
  erb :"auth/login"
end

post '/login' do
 @user = User.find_by(email: params[:user][:email])
  if @user.try(:authenticate, params[:user][:password])
    session[:user_id] = @user.id
    redirect '/lines'
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
