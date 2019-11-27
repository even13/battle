RSpec.feature 'Enter your names', type: :feature do
  scenario "when entering player names" do
    sign_in_and_play
    expect(page).to have_current_path('/play')
    expect(page).to have_content('Eve', 'Sam')
  end
end
