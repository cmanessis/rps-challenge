Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I should see "([^"]*)" button$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^I enter Player Name$/) do
  fill_in('player', with: "Chris")
end

When(/^I enter login answer$/) do
  fill_in('answer', with: 'Vulcan')
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should be redirected to the '\/new_game' page$/) do
  visit '/new_game'
end
