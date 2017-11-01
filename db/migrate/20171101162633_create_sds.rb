class CreateSds < ActiveRecord::Migration[5.1]
  def change
    create_table :sds do |t|
      t.string :name
      t.integer :cpu
      t.integer :disk
      t.string :process

      t.timestamps
    end
  end
end
