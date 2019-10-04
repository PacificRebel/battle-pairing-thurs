feature 'lost' do

  scenario 'player loses when hp reaches 0' do
    sign_in_and_play
    19.times do
      click_button "Attack"
      click_button "Go back"
    end
    expect(page).to have_content("You lose.")
  end
end

# click_button ('Attack')
# expect(page).to have_content("Jess attacked Heli")
# expect(page).to have_content("Heli has 90HP")
