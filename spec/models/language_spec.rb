require 'rails_helper'

RSpec.describe Language, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :mode }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :mode }
  it { is_expected.to validate_uniqueness_of :name }
  it { is_expected.to have_many :snippets }
end
