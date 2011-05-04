class Fortune
  get '/' do
    haml :index
  end

  get '/fortune/random/?' do
    content_type :json
    getRandomFortune()
  end

  get '/fortune/:id/?' do
    content_type :json
    getFortune(params[:id])
  end

  get '/fortune/?' do
    haml :index
  end
  
  get '/fortunes/?' do
    content_type :json
    getFortuneCount()
  end

  post '/fortune/?' do
    @dataraw = params['data']
    if(@dataraw.nil?)
      @dataraw = params[:data]
    end
    begin
    @data = JSON.parse(@dataraw) 
    if(@data["id"])
      content_type :json
      getFortune(@data["id"])
    elsif(@data["random"] == "true")
      content_type :json
      getRandomFortune()
    else 
      pp "failing"
      content_type :json
      getFailData()
    end
    rescue
      @data = "INVALID JSON STRING GIVEN"
      haml :index
    end

  end
end