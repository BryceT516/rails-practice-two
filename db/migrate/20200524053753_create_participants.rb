class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :ship, null: false, foreign_key: {to_table: :resource_object}
      t.string :color_1
      t.string :color_2
      
      t.timestamps
    end
  end
end
