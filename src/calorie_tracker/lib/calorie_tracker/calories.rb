class CalorieRecorder
  attr_reader :name
  def initialize(name)
    @name = name
    @record = []
  end
   def get_record(type, nmuber_of_cal, time_of_day)
    total = {food: type, calorie: nmuber_of_cal, time: time_of_day}
    @record << total
  end
  
  def display
    @record.each do |item|
      puts "Meal -> #{item[:food]}, #{item[:calorie]} -> calories, Time -> #{item[:time]}"
    end
  end
  
end