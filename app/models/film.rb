class Film < ApplicationRecord
    validates :name, presence: true, length: {minimum: 2, maximum: 10}
    validates :description, presence: true, length: {minimum: 2}

    def formatted_created_at
        created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
end
