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
    click_link 'Delete'
    expect(page).to have_content 'Products'
  end
end
