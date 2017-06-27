require 'rails_helper'

RSpec.describe EducationLevel, type: :model do
  it { validate_presence_of(:name) }
end
