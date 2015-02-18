require 'pry'

post '/lines/:id/messages' do |id|
  @message = Message.new(params[:message])
  @message.user = current_user
  if @message.save
    redirect "/lines/#{id}"
  end
end

delete '/lines/:line_id/messages/:id' do |line_id, id|
  Message.find_by(id: id).destroy
  redirect "/lines/#{line_id}"
end
