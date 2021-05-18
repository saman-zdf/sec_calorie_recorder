# frozen_string_literal: true

require_relative "./calorie_tracker/version"

require "bundler"
Bundler.require
require_relative "./calorie_tracker/calorie"
require_relative "./calorie_tracker/bmi"
require_relative "./calorie_tracker/user_interface"

require_all "calorie_trakcer"
