class ChangeEvents < ActiveRecord::Migration
  def up
    remove_column :events,  :end
    remove_column :events,  :start
    remove_column :events,  :audience

    add_column    :events,  :start_date,            :date
    add_column    :events,  :start_time_in_halfs,   :integer, :default => 18, :limit => 6
    add_column    :events,  :end_date,              :date
    add_column    :events,  :end_time_in_halfs,     :integer, :default => 18, :limit => 6
    add_column    :events,  :audience,              :string
    add_column    :events,  :contact,               :string
    add_column    :events,  :website,               :string
  end

  def down
    remove_column :events,  :end_date
    remove_column :events,  :end_time_in_halfs
    remove_column :events,  :start_date
    remove_column :events,  :start_time_in_halfs
    remove_column :events,  :audience
    remove_column :events,  :contact
    remove_column :events,  :website

    add_column    :events,  :end,         :datetime
    add_column    :events,  :start,       :datetime
    add_column    :events,  :audience,    :integer
  end
end
