require 'rails_helper'

RSpec.describe Link, type: :model do
    context "validations" do
        it { should validate_presence_of(:url) }
        
        it "valid with valid url"
        
        it  "is not valid when url is invalid"
    end
end
