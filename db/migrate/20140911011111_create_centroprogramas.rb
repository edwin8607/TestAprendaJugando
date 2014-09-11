class CreateCentroprogramas < ActiveRecord::Migration
  def change
    create_table :centroprogramas do |t|
      t.references :centro, index: true
      t.references :programa, index: true

      t.timestamps
    end
  end
end
