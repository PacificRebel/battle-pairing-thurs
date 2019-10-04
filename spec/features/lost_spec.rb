feature 'lost' do

  scenario 'player loses when hp reaches 0' do
    sign_in_and_play
    18.times do
      click_button "Attack"
      click_button "Go back"
    end
    click_button "Attack"
    expect(page).to have_content("Heli, you lose.")
    expect(page).to have_button("New game")
  end
end
