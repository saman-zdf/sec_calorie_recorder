class CalorieRecorder
  attr_reader :name
  def initialize(name)
    @name = name
    @intake = []
  end
  
end