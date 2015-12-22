class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :place
      t.text :address
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
