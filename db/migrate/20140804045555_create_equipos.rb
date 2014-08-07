class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :desc_corta
      t.string :serie
      t.string :marca
      t.string :modelo
      t.string :ram
      t.string :hd
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
