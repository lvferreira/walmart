class CEP
  include HTTParty

  base_url "http://cep.correiocontrol.com.br/"

  attr_accessor :cep

  def initialize(cep = "#{url}")
    @cep = cep
  end

  def result
    @result ||= self.class.get("/#{cep}.json/").parsed_response
  end

  def valid?
    result.is_a?(hash) && result["erro"].blank?
  end

  def address
    if valid?
      {
        neighbourhood: result["bairro"] || "",
		street:        result["logradouro"].strip,
        zip code:      result["cep"] || "",
        state:         result["uf"] || "",
        locality:      result["localidade"] || ""
      }
    else
      {}
    end
  end
  
end