require 'rails_helper'

describe "the add a review process" do
  it "adds a review to a product" do
    visit products_path
    click_link 'New Product'
    fill_in 'product[name]', :with => 'Tacos'
    fill_in 'product[cost]', :with => '20'
    fill_in 'product[country]', :with => 'Mexico'
    click_on 'Create Product'
    click_link('Tacos', :match => :first)
    click_link 'Leave a review'
    fill_in 'review[author]', :with => 'Mohamed'
    fill_in 'review[content]', :with => 'Aesthetic fashion axe lomo pop-up heirloom authentic crucifix helvetica waistcoat health you probably havent heard of them.'
    fill_in 'review[rating]', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'Aesthetic fashion axe lomo pop-up heirloom authentic crucifix helvetica waistcoat health you probably havent heard of them.'
  end

  it "gives error when a field is left blank" do
    visit products_path
    click_link 'New Product'
    fill_in 'product[name]', :with => 'Chocolate'
    fill_in 'product[cost]', :with => '20'
    fill_in 'product[country]', :with => 'Mexico'
    click_on 'Create Product'
    click_link('Chocolate', :match => :first)
    click_link 'Leave a review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
