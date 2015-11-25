class AddFieldsToSettings < ActiveRecord::Migration
  def change
  	change_table :settings do |t|
  		t.attachment :pinterest_image
  		t.attachment :twitter_image
  		t.string :pinterest_description
  		t.string :linkedin_title
  		t.string :linkedin_message
  	end
  end
end
