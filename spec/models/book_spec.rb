require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
     it {should validate_presence_of :title}
     it {should validate_presence_of :author}
     it {should validate_presence_of :summary}
     it {should validate_presence_of :publication_year}
     it {should validate_presence_of :genre}
     it {should validate_presence_of :rating}
     it {should validate_numericality_of :rating}
  end
end
