class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nombre_programa
      t.string :ficha_programa
      t.references :centro, index: true

      t.timestamps
    end
  end
end
