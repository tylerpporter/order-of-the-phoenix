class PotterService
  class << self
    def phoenix_by_house(house)
      resp = Faraday.get('https://www.potterapi.com/v1/characters') do |req|
        req.params[:key] = ENV["POTTER_KEY"]
        req.params[:house] = house
        req.params[:orderOfThePhoenix] = true
      end
      JSON.parse(resp.body, symbolize_names: true)
    end
  end
end
