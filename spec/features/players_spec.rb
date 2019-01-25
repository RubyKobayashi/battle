

feature 'Enter names' do
  scenario 'there is a form on the homepage' do
    visit('/')
    expect(page).to have_field(:type => 'text')
  end
  scenario 'you can enter 2 players names' do
    sign_in_and_play
    expect(page).to have_content 'Bear vs. Bunny'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'View Hit Points' do
scenario 'player 2 hit points' do
  sign_in_and_play
  expect(page).to have_content 'Bunny hit points = 60'
end
end

feature  'Attacking' do
  scenario 'player 1 sees confirmation of attack on player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Bear attacked Bunny"
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'

    expect(page).not_to have_content 'Bunny: 60HP'
    expect(page).to have_content 'Bunny: 50HP'
end
end
