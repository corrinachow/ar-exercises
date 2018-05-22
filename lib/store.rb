class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }, presence: true
  validates :annual_revenue, numericality: { other_than: 0 }, presence: true
  validate :apparel_validator

  def apparel_validator
    if !mens_apparel && !womens_apparel
      errors.add(:womens_apparel, "men_apparel or womens_apprel must be carried")
    end
  end

end
