require 'spec_helper'

describe GroupsController do

  let(:valid_session) { {} }

  describe "POST create" do
    it "creates a new Group" do
      post :create, {:group => { "tags" => "aaa\r\nbbb\r\nccc" }}, valid_session
      group = Group.last
      expect(group.tags).to eq(["aaa","bbb","ccc"])
    end
  end

  describe "PUT update" do
    it "updates the requested group" do
      group = Group.create!(tags: ["aaa","bbb", "ccc"])
      group_id = group.id
      put :update, {:id => group_id, :group => { "tags" => "aa\r\nbb" }}, valid_session

      group2 = Group.find(group_id)

      expect(group2.tags).to eq(["aa","bb"])
    end
  end
end
