require 'rails_helper'

describe 'the add a list process' do
  it 'adds a new list' do
    visit list_task_path
    click_link 'New List'
    fill_in 'Name', :with => 'Home Stuff'
    click_on 'Create List'
    expect(page).to have_content 'Home Stuff'
  end

  it "gives error when no name is entered" do
    visit new_list_path
    click_on 'Create List'
    expect(page).to have_content 'errors'
  end
end
