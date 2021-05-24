class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :image_url, presence: true


    before_save :set_delete

    def set_delete
        self.content = (self.content.downcase).gsub("spoiler","")
    end
end
