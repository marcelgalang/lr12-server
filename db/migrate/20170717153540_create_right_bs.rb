class CreateRightBs < ActiveRecord::Migration[5.0]
  def change
    create_table :right_bs do |t|
      t.references :user, foreign_key: true
      t.integer :duration
      t.datetime :startTime
      t.datetime :endTime

      t.timestamps
    end
  end
end
