class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.string :owner
      t.string :phone
      t.text :description
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
