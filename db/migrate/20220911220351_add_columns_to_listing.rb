class AddColumnsToListing < ActiveRecord::Migration[7.0]
  def change
    change_table :listings do |t|
      t.column :name, :string, null: false
      t.column :price, :decimal, null: false
      t.column :description, :text
      t.column :available_at, :date
    end
  end
end
