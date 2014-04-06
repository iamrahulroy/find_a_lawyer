class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :name
      t.string :code
      t.integer :experience
      t.string :location
      t.integer :rating

      t.timestamps
    end
  end
end
