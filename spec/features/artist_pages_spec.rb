feature "Artist Listing" do
  scenario "Visits the artists page" do
    visit 'artists/index'

    expect(page).to have_title(I18n.t("home_page.site_name"))
  end
  
  scenario "sees multiple artists on the page" do
  	artists = FactoryGirl.create_list(:artist, 3)

  	visit 'artists/index'

  	artists.each do |artist|
  	  expect(page).to have_content artist.name
  	end
  end

  scenario "visits artist page" do
    artist = FactoryGirl.create(:artist)

    visit artist_path(artist)

    expect(page).to have_content artist[:name]
  end  

  scenario "artist has shows" do
    show = FactoryGirl.create(:show)

    visit artist_path(show.artist)

    expect(page).to have_content show.festival[:name]
  end

  scenario "festival pages clickable" do
    show = FactoryGirl.create(:show)

    visit artist_path(show.artist)

    expect(page).to have_link(show.festival.name,artist_path(show.festival))
  end
end