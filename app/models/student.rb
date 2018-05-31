class Student < ActiveRecord::Base
  attr_accessor :active
  after_initialize :set_defaults, unless: :persisted?
  def to_s
    self.first_name + " " + self.last_name
  end
  def self.create!(params)
    super
    self.active = false if self.active.nil?
  end
  def set_defaults
    self.active = false if self.active.nil?
  end
end
