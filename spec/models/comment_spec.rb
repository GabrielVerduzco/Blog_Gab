require "rails_helper"

RSpec.describe Comment,  type: :model do
  it { should belong_to(:user) }
end

RSpec.describe Comment,  type: :model do
  it { should have_db_column(:body) }
end

