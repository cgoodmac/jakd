class AddIsInProgressColumnToGamesTable < ActiveRecord::Migration
  def change
    add_column :games, :is_in_progress, :boolean, :default => true
  end
end
