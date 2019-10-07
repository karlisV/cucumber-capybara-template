Given(/^I am on the landing page$/) do
  Capybara.visit('/')
  expect(Capybara.page).to have_css 'h6.section-name', text: /testamonials/i
end
