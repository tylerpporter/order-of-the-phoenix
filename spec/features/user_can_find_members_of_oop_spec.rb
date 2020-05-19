require 'rails_helper'

describe 'As a user when I visit / and select Gryffindor and click Search For Members' do
  scenario 'I should be on page /search' do
    visit '/'
    click_on "Search For Members"

    expect(current_path).to eq('/search')
  end
  xscenario 'I should see total number of OOTP members that belong to Gryffindor' do
  end
  xscenario 'I should see attributes of each member' do
  end
end
