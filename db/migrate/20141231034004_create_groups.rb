class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :tags, array: true, default: []

      t.timestamps null: false
    end
  end
end
