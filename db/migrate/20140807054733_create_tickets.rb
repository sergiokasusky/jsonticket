class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.boolean :abierto
      t.string :desc_corta
      t.string :detalles
      t.references :equipo, index: true

      t.timestamps
    end
  end
end
