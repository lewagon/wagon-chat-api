class AddIndexes < ActiveRecord::Migration[7.1]
  def change
    add_index :comments, :channel
  end
end
