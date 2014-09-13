class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :cedula
      t.boolean :sexo
      t.string :email
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
