class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.boolean :all_day
      t.string :memo

      t.timestamps
    end
  end
end
