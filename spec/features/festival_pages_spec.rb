require 'rails_helper'

feature "Festival Pages" do

  scenario do
    before{visit root_path}

    expect(page).to have_title('Festivals for the Restivals')
  end


end