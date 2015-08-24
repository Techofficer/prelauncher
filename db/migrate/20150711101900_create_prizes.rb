class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name, null: false
      t.integer :number_of_referrals, null: false, default: 1
      t.attachment :image
      	
      t.timestamps null: false
    end
  end
end
