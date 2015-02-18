post '/lines/:line_id/messages' do |line_id|
  p params
  @message = Message.new(params[:message])
  @message.user = current_user
  if @message.save
    redirect "/lines/#{line_id}"
  else
    puts "This is an error"
  end
end
