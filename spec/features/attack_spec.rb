RSpec.feature 'Attacking', type: :feature do
  scenario "when attacking the opponent" do
    sign_in_and_play
    click_on('Player-One-Attack')
    expect(page).to have_current_path('/attack')
    expect(page).to have_content('Eve attacks Sam')
  end

  scenario "reducing player two HP by 10" do
    sign_in_and_play
    click_on('Player-One-Attack')
    expect(page).to have_content('Sam hit points : 90')
  end
end
