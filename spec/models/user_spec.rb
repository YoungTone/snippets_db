require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to respond_to :username }
  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :password }
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :password }
  it { is_expected.to validate_uniqueness_of :username }
  it { is_expected.to validate_uniqueness_of :email }
  it { is_expected.to have_secure_password }
  it { is_expected.to validate_length_of :username }
  it { is_expected.to validate_length_of :password }
  xit { is_expected.to have_many :snippets }
  xit { is_expected.to have_many :favorites }
end
