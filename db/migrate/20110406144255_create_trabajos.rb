class CreateTrabajos < ActiveRecord::Migration
  def self.up
    create_table :trabajos do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :trabajos
  end
end
