class ChangePromoidToString < ActiveRecord::Migration[5.1]
  def change
    change_column :comments, :promo_id, :string
    rename_column :comments, :promo_id, :channel
  end
end
