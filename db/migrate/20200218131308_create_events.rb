class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :game
      t.string :description
      t.string :date
      t.string :location
      t.float :lat 
      t.float :lng
      t.string :user_id

      t.timestamps
    end
  end
end
