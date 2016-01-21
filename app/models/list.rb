class List < Microframe::ORM::Base
  property :id, type: :integer, primary_key: true
  property :name, type: :text

  create_table

  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: true, with: :super_name
  validate_with :my_validator

  has_many :items

  def my_validator
    # error.add("Get out")
  end

  def super_name
    if /Oscar/.match(name)
      error.add("Your can't be Oscar. C'mon!")
    end
  end

end
