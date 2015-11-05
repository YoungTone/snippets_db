class Editor < ActiveRecord::Base
  has_many :snippets
  validates :name, presence: true
  validates :name, uniqueness: true
end
