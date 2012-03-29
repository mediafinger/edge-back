class CreateSessions < ActiveRecord::Migration
  def change
    create_table(:sessions) do |t|
      t.integer   :event_id
      t.string    :name
      t.string    :speaker
      t.string    :description
      t.integer   :day
      t.time      :start_time
      t.integer   :length
      t.string    :room
      t.string    :url
      t.timestamps
    end

    add_index :sessions, :event_id
    add_index :sessions, :speaker
  end
end
