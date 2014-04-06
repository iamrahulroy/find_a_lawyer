class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :code
      t.string :scode
      t.string :sname
      t.integer :charges

      t.timestamps
    end
    add_index :services, :code
  end
end
