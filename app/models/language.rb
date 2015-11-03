class Language < ActiveRecord::Base
  has_many :snippets
  validates :highlight_class, :name, presence: true
  validates :name, uniqueness: true

end
