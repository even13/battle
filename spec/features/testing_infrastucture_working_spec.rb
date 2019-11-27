RSpec.feature 'first test', type: :feature do
  scenario 'working' do
    visit '/'
    expect(page).to have_content('testing infrastructure working')
  end
end
