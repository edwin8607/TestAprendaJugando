class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nombre_tema
      t.references :programa, index: true

      t.timestamps
    end
  end
end
