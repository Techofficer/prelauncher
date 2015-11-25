class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :user, index: true
      t.string :social_network

      t.timestamps null: false
    end
  end
end
