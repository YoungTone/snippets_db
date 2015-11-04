require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { is_expected.to respond_to :user_id }
  it { is_expected.to respond_to :snippet_id }
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :user }
end