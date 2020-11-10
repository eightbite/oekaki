class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|

      t.timestamps
      t.string :name, null: false
      t.string :password, null: false
      t.integer :purpose_id, null: false
      t.references :user, null: false, foreign_key: true

    end
  end
end
