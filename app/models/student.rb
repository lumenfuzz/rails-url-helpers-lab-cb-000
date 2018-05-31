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
  def save
    super
    byebug
    if self.active
      Student.update_all(active: false)
    else
      Student.update_all(active: true)
    end
  end
end
