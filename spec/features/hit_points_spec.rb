RSpec.feature 'Hit points', type: :feature do
   scenario "viewing opponent's hit points" do
     sign_in_and_play
     expect(page).to have_content('hit points')
   end
end
