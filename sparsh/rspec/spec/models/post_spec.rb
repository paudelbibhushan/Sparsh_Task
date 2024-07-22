require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { FactoryBot.build(:post) }

  context 'Should validate' do
    it 'with title , user and body' do
      expect(post).to be_valid
    end
    it "when doesn't have a user for a post" do
      post.user = nil
      expect(post).not_to be_valid
    end
  end

  it 'checks that the post can be deleted' do
    post.destroy
    expect(Post.count).to eq(0)
  end
  
end
