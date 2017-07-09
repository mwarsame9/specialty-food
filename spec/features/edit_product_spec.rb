require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    visit products_path
    click_link 'New Product'
    fill_in 'product[name]', :with => 'Apple'
    fill_in 'product[cost]', :with => '20'
    fill_in 'product[country]', :with => 'Canada'
    click_on 'Create Product'
    click_link('Apple', :match => :first)
    click_link 'Edit'
    fill_in 'product[name]', :with => 'Orange'
    fill_in 'product[cost]', :with => '20'
    fill_in 'product[country]', :with => 'Canada'
    click_on 'Update Product'
    expect(page).to have_content 'Orange'
  end
end
