class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :location
      t.string :nickname
      t.string :song
      t.integer :championships

      t.timestamps
    end
  end
end
