class AddCountToSsoeStudents < ActiveRecord::Migration
  def change
      add_column :ssoe_students, :noTime, :string
  end
end
