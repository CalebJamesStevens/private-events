class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_location
      t.date :event_date
      t.belongs_to :user
      

      t.timestamps
    end
  end
end
