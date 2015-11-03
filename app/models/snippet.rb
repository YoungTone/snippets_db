class Snippet < ActiveRecord::Base
  belongs_to :user
  has_many :languages
  validates :name, :description, :code, :user_id, presence: true
  validates :code, uniqueness: true
  validates :name,  length: { in: 1..20 }
  validates :description,  length: { in: 10..140 }
end
