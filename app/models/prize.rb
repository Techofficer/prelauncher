class Prize < ActiveRecord::Base
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :name, presence: true
	validates :number_of_referrals, numericality: { :greater_than => 0}, presence: true

	def winners
		user_ids = []
		User.all.each do |user|
			if user.prize == self
				user_ids << user.id
			end
		end
		return User.where(id: user_ids)
	end

	def number_of_winners
		winners.count
	end

end
