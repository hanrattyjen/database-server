require 'spec_helper'


  feature 'Enter key value pairs' do
    scenario 'submitting key value pairs' do
      visit('/')
      fill_in :somekey, with: 'Hey'
      fill_in :somevalue, with: 'Ho'
      click_button 'Submit'
      expect(page).to have_content 'Key: Hey'
      expect(page).to have_content 'Value: Ho'
    end
  end
