class Student < ActiveRecord::Base
  attr_accessor :active
  after_initalize :init
  def to_s
    self.first_name + " " + self.last_name
  end
  def init
    self.active = false if self.active.nil?
  end
end
