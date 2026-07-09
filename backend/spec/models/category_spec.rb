require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:food) { FactoryBot.create(:category, name: "Food") }
  let(:new_category) { FactoryBot.build(:category) }

  context "name" do
    it "fails when name is blank" do
      new_category.name = nil

      expect(new_category).to be_invalid
      expect(new_category.errors[:name]).to include("can't be blank")
    end

    it "fails when category name is duplicated" do
      new_category.name = "Food"
      expect(new_category).to be_invalid
      expect(new_category.errors[:name]).to include("has already been taken")
    end

    it "succeeds to save a new category with a new name" do
      new_category.name = "Gas"
      expect(new_category).to be_valid
    end
  end
end
