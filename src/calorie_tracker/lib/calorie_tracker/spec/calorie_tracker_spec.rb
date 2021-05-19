require_relative "../calories"
require_relative "../bmi"
require_relative "../user_interface"

describe CalorieRecorder do
  # this code will read the name
  name = "saman"
  calorie = CalorieRecorder.new(name)
  it "shold have a readable name" do
    expect(calorie.name).to eq(name)
  end
end
describe Bmi do
  # this code is to get the instance of weight and height
  weight = 70
  height = 1.80 
  bmi = Bmi.new(weight, height)
  # this code should calculate and return  bmi
  it "should return the bmi" do
    total_bmi = weight / (height * height)
    expect(bmi.get_bmi).to eq(total_bmi)
  end
end


