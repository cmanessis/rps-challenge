Given(/^I am on the homepage$/) do
  visit  '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I should see Start Game button$/) do
  expect(page).to have_content(start game)
end


When(/^I enter Player Name with "([^"]*)"$/) do |arg1|
  fill_in('player', with: arg1)
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  visit '/new_game'
end

Then(/^I should be redirected to the new game page$/) do
  visit '/new_game'
end

Given(/^I am on the new game page$/) do
  visit '/new_game'
end

Then(/^I should see a "([^"]*)" button$/) do |arg1|
  expect(page).to have_content(arg1)
end
