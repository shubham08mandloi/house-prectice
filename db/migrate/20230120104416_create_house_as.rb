class CreateHouseAs < ActiveRecord::Migration[7.0]
  def change
    create_table :house_as do |t|
      t.string :house_name
      
      t.timestamps
    end
  end
end
