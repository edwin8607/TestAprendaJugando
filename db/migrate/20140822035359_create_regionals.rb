class CreateRegionals < ActiveRecord::Migration
  def change
    create_table :regionals do |t|
      t.string :departamento

      t.timestamps
    end
  end
end
