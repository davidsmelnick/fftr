require 'rails_helper'

feature "Festival Listing" do

  scenario "Page is visited" do
    visit root_path
    expect(page).to have_title(I18n.t(:site_name))
  end


end