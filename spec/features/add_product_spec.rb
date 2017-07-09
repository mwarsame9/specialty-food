require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'product[name]', :with => 'Pizza'
    fill_in 'product[cost]', :with => '20'
    fill_in 'product[country]', :with => 'Italy'
    click_on 'Create Product'
    expect(page).to have_content 'Pizza'
  end

  it "gives error when a field is left blank" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
