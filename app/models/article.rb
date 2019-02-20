class Article < ApplicationRecord
    # relationships
    belongs_to :category

    # scopes
    scope :active, -> { where('active = ?', true) }
    scope :alphabetical, -> { order('title') }

    # Validations
    validates_presence_of :title, :content
end
