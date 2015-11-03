class Tag < ActiveRecord::Base
  validates :name, :type, presence: true
  validates :name,length: { in: 1..20 }

  has_many :snippets
end