class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :member_name
      t.belongs_to :house_a

      t.timestamps
    end
  end
end
