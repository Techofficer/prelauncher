class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :referral_code
      t.integer :referrer_id, index: true
      t.string :ip_address, index: true

      t.timestamps null: false
    end
  end
end
