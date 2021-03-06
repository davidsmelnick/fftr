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

    visit festival_path(festival)

    expect(page).to have_content festival[:name]
  end

  scenario "festival has shows" do
    show = FactoryGirl.create(:show)

    visit festival_path(show.festival)

    expect(page).to have_content show.artist[:name]
  end

  scenario "artist pages clickable" do
    show = FactoryGirl.create(:show)

    visit festival_path(show.festival)

    expect(page).to have_link(show.artist.name,artist_path(show.artist))
  end
end