class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string: image
      t.string: sound
      t.string: feedback
      t.timestamps
    end
  end
end

