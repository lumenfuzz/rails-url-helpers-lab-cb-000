class CreateStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.boolean :active
    end
  end
end