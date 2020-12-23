class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.integer :section_id

      t.timestamps
    end
  end
end
