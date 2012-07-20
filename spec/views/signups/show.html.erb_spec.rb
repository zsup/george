require 'spec_helper'

describe "signups/show" do
  before(:each) do
    @signup = assign(:signup, stub_model(Signup,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
