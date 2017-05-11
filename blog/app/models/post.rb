class Post < ApplicationRecord
    belongs_to :user

	validates :head, presence: true,
	        		length: { minimum: 5, maximum: 50 }
end
