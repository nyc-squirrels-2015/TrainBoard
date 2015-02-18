require 'spec_helper'

describe "Auth controller" do
let(:user) {User.create(name: "Nancy Smith", email: "nsmith@aol.com", password: "password")}

before do
 user
end

describe "GET /signup" do
  it "loads the signup page" do
    get '/signup'
    expect(last_response).to be_ok
  end
end

describe "GET /login" do
  it "loads the login page" do
    get '/login'
    expect(last_response).to be_ok
  end
end

describe "GET /logout" do
  it "logs out the user and clears the session" do
    get '/logout'
    expect(last_response.redirect?).to be_true
    follow_redirect!
    last_request.path.should == '/'
  end
end

describe "POST /signup" do
  it "should successfully redirect after user created" do
    post '/signup', params = {user:{name: "Nancy Smith", email: "nsmith@aol.com", password: "password"}}
    expect(last_response).to be_redirect
    follow_redirect!
    last_request.path.should == '/lines'
  end
end




end
