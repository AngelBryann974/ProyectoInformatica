class CreateVideojuegos < ActiveRecord::Migration
  def change
    create_table :videojuegos do |t|
      t.string :nombre
      t.string :descripcion
      t.float :precio
      t.string :developer
      t.string :ESRB

      t.timestamps
    end
  end
end
