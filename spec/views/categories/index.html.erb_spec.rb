require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name_category => "Name Category"
      ),
      Category.create!(
        :name_category => "Name Category"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Name Category".to_s, :count => 2
  end
end
