class Student < ActiveRecord::Base
  attr_accessor :active
  after_initialize :set_defaults
  after_create :set_defaults
  def to_s
    self.first_name + " " + self.last_name
  end
  def set_defaults
    return if self.active
    self.active = false if self.active.nil?
  end
end
