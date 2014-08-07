class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :email
      t.string :password
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
