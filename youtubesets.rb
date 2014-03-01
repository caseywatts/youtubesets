require "sinatra"
require "sinatra/reloader" if development?


configure do
  enable :sessions
end


helpers do
  def randomvideo(set)
    set.sample
  end
  def embedyoutube(videonumber)
    %{
    <body style="margin:0;">
    <object height="100%" width="100%"><param name="movie" value="http://www.youtube.com/v/#{videonumber}&autoplay=1" /><embed height="100%" src="http://www.youtube.com/v/#{videonumber}&autoplay=1" type="application/x-shockwave-flash" width="100%"></embed></object>
    </body>
    }
  end
  def beyoncevideos
    ["QczgvUDskk0", "VBmMU_iwe6U", "Vjw92oUduEM", "4m1EFMoRFvY", "FHp2KgyQUFk"]
  end
  def pmjvideos
    ["pXYWDtXbBB0", "VBmCJEehYtU", "GZQJrM09jbU"]
  end
end

##INDEX
##Main Welcome Page
get '/' do
  "<h1>Hi!</h1><h2>If you know the url you can play a random video from set of youtube videos!</h2>"
end

##Display the Video Sets
get '/beyonce' do
  embedyoutube(randomvideo(beyoncevideos))
end

get '/pmj' do
  embedyoutube(randomvideo(pmjvideos))
end


#Session for troubleshooting
get '/session' do
  session.inspect
end

##example of parameters
get '/params/:idlol' do
  params.inspect
end

get '/favorite/:fruit' do |fruit|
  "My favorite fruit is the " + fruit.to_s
end

