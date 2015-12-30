class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.string :title
      t.text :description
      t.text :place
      t.text :address

      t.timestamps null: false
    end
  end
end
