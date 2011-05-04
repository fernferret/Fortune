class Fortune
  def getFortune(id)
    fortune = $fortunes[id.to_i]
    if(fortune.nil? || id.to_i < 0 || id.to_i.to_s != id)
      {:data => {:fortune => nil, :result => "fail"}}.to_json
    else
      {:data => {:fortune => fortune, :result => "success"}}.to_json
    end
  end
  def getRandomFortune()
    {:data => {:result => "success", :fortune => $fortunes[rand($fortunes.size)]}}.to_json
  end
  def getFailData()
    {:data => {:fortune => nil, :result => "fail"}}.to_json
  end
  def getFortuneCount()
    {:data => {:count => $fortunes.size, :result => "success"}}.to_json
  end
end