class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.text :title
      t.integer :status
      t.references :user
      

      t.timestamps
    end
  end
end
