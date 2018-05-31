class Student < ActiveRecord::Base
  attr_accessor :active
  def to_s
    self.first_name + " " + self.last_name
  end
  def after_initialize
    self.active = false if self.active.nil?
  end
end
