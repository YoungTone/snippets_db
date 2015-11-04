require 'rails_helper'

RSpec.describe Editor, type: :model do
  it { is_expected.to respond_to :icon_src }
  it { is_expected.to respond_to :name }
  it { is_expected.to validate_uniqueness_of :name }
  it { is_expected.to have_many :snippets }
end
