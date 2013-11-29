class AddIndexToSsoeStudentEmail < ActiveRecord::Migration
  def change
      add_index :ssoe_students, :stdsemail, unique: true
  end
end
