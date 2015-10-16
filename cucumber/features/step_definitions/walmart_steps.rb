Given(/^I am on the Walmart homepage$/) do
  visit ('https://www.walmart.com.br/')
end

When(/^I search for "([^"]*)"$/) do |product|
  within('form#topbar-search') do
   fill_in ('ft', :with => product)
  end
  element.send_keys('ft', :enter) 
end

Then(/^I should see a page with search results$/) do
  within('div#category-product') do
   page.assert_selector('li', 'ItemListElement')
  end
end

Then(/^I click on a product$/) do
  within('div#inner-content') do
   click_link('a', :match => :first)
  end
end

And(/^I should see the page of that product$/) do
  expect(page).to have_selector('')
end

Then(/^I add that product to cart$/) do
  within('div#buy-button-wrapper') do 
   click_button('buy button btn btn-sucess')
  end
  click_button('navegaCarrinho')
end

And(/^I open the cart$/) do
  within('div#cart') do
   click_button('topbar-buttons open-link cart-link')
  end
end

And(/^I should see the product within the cart$/) do
  within('div#category-product') do
   page.assert_selector('li', 'my-car-content-item')
  end
end