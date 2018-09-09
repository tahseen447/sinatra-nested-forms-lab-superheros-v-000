class Team
  attr_accessor :name, :motto

  def initialize(params)
    puts params[]
    @name = params[:team][:name]
    @motto = params[:team][:motto]
  end
end

