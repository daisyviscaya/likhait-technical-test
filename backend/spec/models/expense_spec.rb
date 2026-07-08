require 'rails_helper'

RSpec.describe Expense, type: :model do
  let!(:expense) { FactoryBot.create(:expense) }

  context "date" do
    it "fails on future date" do
      expense.date = Date.today + 3.days
      expect(expense).to be_invalid
    end

    it "succeeds on present date" do
      expense.date = Date.today
      expect(expense).to be_valid
    end

    it "succeeds on past date" do
      expense.date = Date.today - 3.days
      expect(expense).to be_valid
    end
  end
end
