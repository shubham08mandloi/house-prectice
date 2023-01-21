class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.belongs_to :house_a

      t.timestamps
    end
  end
end
