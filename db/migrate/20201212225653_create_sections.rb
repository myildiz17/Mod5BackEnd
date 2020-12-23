class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end
  end
end
