class AddTopServiceToTag < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :top_service, :bool
  end
end
