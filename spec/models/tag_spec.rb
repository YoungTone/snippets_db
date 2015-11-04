require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :type }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :type }
  it { is_expected.to validate_length_of :name }
  it { is_expected.to have_many :snippets }
end