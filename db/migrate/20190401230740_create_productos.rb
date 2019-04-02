class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :categoria, limit: 50
      t.string :nombre, limit: 30
      t.decimal :precio, precision: 10, scale: 2
      t.decimal :precio_venta, precision: 10, scale: 2

      t.timestamps
    end
  end
end
