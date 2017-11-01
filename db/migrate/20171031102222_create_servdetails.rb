class CreateServdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :servdetails do |t|
      t.string :name
      t.integer :cpu

      t.timestamps
    end
  end
end
