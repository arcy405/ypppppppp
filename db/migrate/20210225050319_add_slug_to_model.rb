class AddSlugToModel < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :slug, :string
    add_index :models, :slug, unique: true
  end
end
