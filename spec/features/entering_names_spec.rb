RSpec.feature 'Enter your names', type: :feature do
  scenario "when entering player names" do
    visit "/"
    fill_in 'player-one-name', with: 'Eve'
    fill_in 'player-two-name', with: "Sam"
    click_button 'Submit'
    expect(page).to have_current_path('/names')
    expect(page).to have_content('Eve', 'Sam')
  end
end
