require_relative "../calories"
require_relative "../bmi"
require_relative "../user_interface"

describe CalorieRecorder do
  # this test will read the name
  name = "saman"
  calorie = CalorieRecorder.new(name)
  it "shold have a readable name" do
    expect(calorie.name).to eq(name)
  end
  # this test will read the record of type of food, calorie intake and time of the the day
  it "should read the food type, calorie, and time" do
    record = [{food: "chicken", calorie: 300, time: "morning"}]
    expect(calorie.get_record("chicken", 300, "morning")).to eq(record)
  end
  # this test wil display all the intake record
  it "should display the intake record ro the user" do
    record = [{food: "chicken", calorie: 300, time: "morning"}]
    # display = @record.each do |item|
    #   puts "Meal -> #{item[:food]}, #{item[:calorie]} -> calories, Time -> #{item[:time]}"
    # end
    expect(calorie.display).to eq(record)
  end
end
describe Bmi do
  # this test is to get the instance of weight and height
  weight = 70
  height = 1.80 
  bmi = Bmi.new(weight, height)
  # this test read the user's weight
  it "should read the weight" do
    expect(bmi.weight).to eq(weight)
  end
  # this test read the user's height
  it "should read the weight" do
    expect(bmi.height).to eq(height)
  end
  # this test should calculate and return  bmi
  it "should return the bmi" do
    total_bmi = weight / (height * height)
    expect(bmi.get_bmi).to eq(total_bmi)
  end
end


