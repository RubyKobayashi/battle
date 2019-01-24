def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Bear'
  fill_in :player_2_name, with: 'Bunny'
  click_button 'Submit'
end
