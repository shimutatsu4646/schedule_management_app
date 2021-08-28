class AddPriorityToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :priority, :string
  end
end
