feature "Artist Listing" do
  scenario "sees multiple artists on the page" do
  	festivals = FactoryGirl.create_list(:artist, 3)

  	visit root_path

  	artist.each do |artist|
  	  expect(page).to have_content artist.name
  	end
  end
end