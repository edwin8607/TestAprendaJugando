class AddCodigoAndCiudadToCentros < ActiveRecord::Migration
  def change
    add_column :centros, :ciudad, :string
    add_column :centros, :codigo, :string
  end
end
