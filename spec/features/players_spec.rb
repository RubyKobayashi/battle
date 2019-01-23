

feature 'testing player input' do
  scenario 'there is a form on the homepage' do
    visit('/names')
    expect(page).to have_field(:type => 'text')
  end
end
