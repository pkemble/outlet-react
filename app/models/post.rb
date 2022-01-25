class Post < ApplicationRecord
    belongs_to :notebook
    belongs_to :user
	has_rich_text :content
end
