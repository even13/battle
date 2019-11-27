def sign_in_and_play
  visit '/'
  fill_in 'player-one-name', with: 'Eve'
  fill_in 'player-two-name', with: "Sam"
  click_button 'Submit'
end
