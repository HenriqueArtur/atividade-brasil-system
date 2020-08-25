class AddTempoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tempo, :Time
  end
end
