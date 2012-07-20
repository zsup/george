require 'spec_helper'

describe "signups/edit" do
  before(:each) do
    @signup = assign(:signup, stub_model(Signup,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signups_path(@signup), :method => "post" do
      assert_select "input#signup_name", :name => "signup[name]"
      assert_select "input#signup_email", :name => "signup[email]"
    end
  end
end
