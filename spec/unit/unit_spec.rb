# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'rowling', price: 12.23, published_date: Date.parse("Dec 8 2015"))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    subject.author = nil
    subject.price = nil
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end

# # location: spec/unit/unit_spec.rb
# require 'rails_helper'

# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(title: 'harry potter')
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a name' do
#     subject.title = nil
#     expect(subject).not_to be_valid
#   end
# end