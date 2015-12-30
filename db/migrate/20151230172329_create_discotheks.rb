class CreateDiscotheks < ActiveRecord::Migration
  def change
    create_table :discotheks do |t|
      t.string :title
      t.text :description
      t.text :place
      t.text :address

      t.timestamps null: false
    end
  end
end
