class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.string :facility
      t.text :description
      t.integer :net
      t.integer :fence
      t.integer :bench
      t.integer :number
      t.integer :rename
      t.string :region
      t.integer :paintoncourt

      t.timestamps
    end
  end
end
