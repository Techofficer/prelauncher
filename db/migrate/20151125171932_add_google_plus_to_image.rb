class AddGooglePlusToImage < ActiveRecord::Migration
  def change
  	change_table :settings do |t|
  		t.attachment :google_plus_image
  	end
  end
end
