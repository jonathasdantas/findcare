require 'rails_helper'

RSpec.describe Helper, type: :model do
  # N x M Relationships
  it { should have_many(:helper_skills) }
  it { should have_many(:skills) }

  it { should have_many(:helper_specific_skills) }
  it { should have_many(:specific_skills) }

  it { should have_many(:helper_extra_skills) }
  it { should have_many(:extra_skills) }

  it { should have_many(:helper_qualifications) }
  it { should have_many(:qualifications) }

  it { should have_many(:helper_languages) }
  it { should have_many(:languages) }
  # End N x M

  it { should have_many(:user_references) }
  it { should have_many(:user_reviews) }

  it { should validate_presence_of(:aboutme) }
  it { should validate_presence_of(:objectives) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:education_level_id) }
  it { should validate_presence_of(:education_field_id) }
  it { should validate_presence_of(:education_place) }
  it { should validate_presence_of(:avaliability) }
end
