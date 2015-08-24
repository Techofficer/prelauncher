class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
  		t.string :facebook_message
  		t.string :twitter_message
  		t.text :email_message
  		t.string :email_subject
		  t.string :facebook_title
  		t.attachment :facebook_image
      t.attachment :cover_image
      t.attachment :additional_image
  		t.string :status, default: "active"
    end
  end
end
