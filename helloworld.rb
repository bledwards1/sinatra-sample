require 'sinatra'

get '/' do
  output = "Hello World!"
  output << "<br />"
  output << "<a href=\"/goodbye\">Leave</a>"
end

get '/goodbye' do
  "Goodbye World!"
end

get '/about' do
  output = "<h2>Sinatra</h2>"
  output << "<p>This is my first Sinatra app.</p>"
  output
end


get '/form' do
  form = '<form action="/form" method="post">'
  form << '<input type="submit" value="Submit" />'
  form << '</form>'
  form
end

post '/form' do
  "Thank you for submitting the form."
end
