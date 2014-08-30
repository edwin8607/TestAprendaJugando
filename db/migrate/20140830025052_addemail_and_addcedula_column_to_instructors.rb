class AddemailAndAddcedulaColumnToInstructors < ActiveRecord::Migration
  def change
  	add_column :instructors, :email, :string
    add_column :instructors, :cedula, :string
  end
end
