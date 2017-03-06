require 'rails_helper'

RSpec.describe Music, type: :model do
  it { should belong_to(:band) }
  
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
  
    context "is valid" do
        it "has a valid factory" do
          expect(build(:music)).to be_valid
        end
    end
  
    context "is invalid" do
        
        it "without title" do
            music = build(:music, title: nil)
            music.valid?
            expect(music.errors[:title]).to include("can't be blank")
        end
        
        it "without author" do
            music = build(:music, author: nil)
            music.valid?
            expect(music.errors[:author]).to include("can't be blank")
        end
    end
end
