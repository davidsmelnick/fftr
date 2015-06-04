require 'rails_helper'


RSpec.describe "Festival Pages" , :type => :request do

    before { visit root_path }

    expect(page).to have_title('Festivals for the Restivals')


end