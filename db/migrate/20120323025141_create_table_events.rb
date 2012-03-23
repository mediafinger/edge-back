class CreateTableEvents < ActiveRecord::Migration
  def change
    create_table(:events) do |t|
      t.string    :name
      t.string    :country
      t.string    :city
      t.string    :street
      t.string    :location
      t.text      :description
      t.datetime  :start
      t.datetime  :end
      t.integer   :size
      t.integer   :audience
      t.timestamps
    end

    add_index :events, :name
    add_index :events, :country
    add_index :events, :city
  end
end
