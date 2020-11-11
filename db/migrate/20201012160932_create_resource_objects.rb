class CreateResourceObjects < ActiveRecord::Migration[6.0]
  def change
    create_table :resource_objects do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :image_resource

      t.timestamps
    end
  end
end
