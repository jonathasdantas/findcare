require 'rails_helper'

RSpec.describe EducationField, type: :model do
  it { validate_presence_of(:name) }
end
