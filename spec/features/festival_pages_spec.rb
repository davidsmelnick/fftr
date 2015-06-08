feature "Festival Listing" do
  scenario "Visits the page" do
    visit root_path

    expect(page).to have_title(I18n.t("home_page.site_name"))
  end

  scenario "sees multiple festivals on the page" do
  	festivals = FactoryGirl.create_list(:festival, 3)

  	visit root_path

  	festivals.each do |festival|
  	  expect(page).to have_content festival.name
  	end
  end

  scenario "visits festival page" do
    festival = FactoryGirl.create(:festival)

    visit 'festivals/' + festival[:name]

    expect(page).to have_content festival[:name]
  end
end