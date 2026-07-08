class BackportExpenseCategories < ActiveRecord::Migration[7.2]
  EXPENSE_CATEGORIES = %w[
    Food
    Transportation
    Entertainment
    Shopping
    Bills
    Healthcare
    Education
    Travel
    Personal
    Other
  ].freeze

  def up
    EXPENSE_CATEGORIES.each do |name|
      Category.find_or_create_by!(name: name)
    end
  end
end
