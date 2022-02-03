# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'rowling'
    fill_in 'Price', with: '12.23'
    select '2021', :from => 'book_published_date_1i'
    select 'March', :from => 'book_published_date_2i'
    select '2', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('rowling')
    expect(page).to have_content('12.23')
    expect(page).to have_content('2021-03-02')
  end
end


# # location: spec/feature/integration_spec.rb
# require 'rails_helper'

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Title', with: 'harry potter'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end