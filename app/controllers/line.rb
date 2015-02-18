get '/lines' do
 @lines = Line.all
 erb :"line/all"
end

get '/lines/:id' do |id|
  @line = Line.find(id)
  erb :"line/show"
end


