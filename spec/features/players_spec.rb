

feature 'Enter names' do
  scenario 'there is a form on the homepage' do
    visit('/')
    expect(page).to have_field(:type => 'text')
  end
  scenario 'you can enter 2 players names' do
    visit('/')
    fill_in :player_1_name, with: 'Bear'
    fill_in :player_2_name, with: 'Bunny'
    click_button 'Submit'
    expect(page).to have_content 'Bear vs. Bunny'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'View Hit Points' do
scenario 'player 2 hit points' do
  visit('/')
  fill_in :player_1_name, with: 'Bear'
  fill_in :player_2_name, with: 'Bunny'
  click_button 'Submit'
  expect(page).to have_content 'Bunny hit points = 5'
end
end
