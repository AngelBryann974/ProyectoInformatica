class CreateVideojuegoAdmins < ActiveRecord::Migration
  def change
    create_table :videojuego_admins do |t|
      t.belongs_to :admin, index:true
      t.belongs_to :videojuego, index:true  

      #t.integer :videojuego_id
      #t.integer :admin_id	

      t.timestamps
    end
    add_index :videojuego_admins, [:videojuego_id, :admin_id], :unique => true
  end
end
