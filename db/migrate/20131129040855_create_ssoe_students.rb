class CreateSsoeStudents < ActiveRecord::Migration
  def change
    create_table :ssoe_students do |t|
      t.string :stdsname
      t.string :stdsic
      t.string :stdsclass
      t.string :stdsemail

      t.timestamps
    end
  end
end
