class Language < ActiveRecord::Base
  has_many :snippets
  validates :mode, :name, presence: true
  validates :name, uniqueness: true

end
