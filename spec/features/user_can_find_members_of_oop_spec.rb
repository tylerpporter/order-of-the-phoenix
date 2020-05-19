require 'rails_helper'

describe "As a user when I visit '/' and select Gryffindor and click Search For Members" do
  scenario "I should be on page '/search'" do
    visit '/'
    click_on "Search For Members"

    expect(current_path).to eq('/search')
  end
  scenario 'I should see total number of OOTP members that belong to Gryffindor' do
    visit '/'
    click_on "Search For Members"

    expect(page).to have_content("Total Members: 21")
    expect(page).to have_css('.member', count: 21)
  end
  scenario 'I should see attributes of each member' do
    visit '/'
    click_on "Search For Members"

    within first('.member') do
      expect(page).to have_content("Sirius Black")
      expect(page).to have_content("House: Gryffindor")
      expect(page).to_not have_content("Role: ")
      expect(page).to_not have_content("Patronus: ")
    end

    within all('.member').last do
      expect(page).to have_content("Ronald Weasley")
      expect(page).to have_content("House: Gryffindor")
      expect(page).to have_content("Role: student")
      expect(page).to have_content("Patronus: jack russell terrier")
    end
  end
end
