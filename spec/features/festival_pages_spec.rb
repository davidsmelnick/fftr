require 'rails_helper'

feature "Festival Pages" do

  scenario do
    visit root_path

    expect(page).to have_title(t(:site_name))
  end


end