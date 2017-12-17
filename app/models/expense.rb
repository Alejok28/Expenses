class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  scope :concepto, ->(c) { where("concept like ?", c) }
  scope :id,       ->(id) { where("category_id like ?", id) }
end
