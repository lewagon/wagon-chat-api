class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :promo_id

      t.timestamps
    end
  end
end
