class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nombre
      t.references :centro, index: true

      t.timestamps
    end
  end
end
