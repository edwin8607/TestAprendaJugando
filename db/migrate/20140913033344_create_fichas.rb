class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :numeroficha
      t.references :programa, index: true

      t.timestamps
    end
  end
end
