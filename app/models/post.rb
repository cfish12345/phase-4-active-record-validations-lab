class Post < ApplicationRecord
    validates :title, presence: true
    validate :title_is_clickbait
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates :content, length: { minimum: 250 }
    

    def title_is_clickbait
        if title == "True Facts"
            errors.add(:title, "Can't be True Facts")
        # elsif
        #     title != ("Won't Believe", "Secret", "Top [number]", "Guess")
        #     errors.add(:title, "Must include clickbait")
        end
    end
end
