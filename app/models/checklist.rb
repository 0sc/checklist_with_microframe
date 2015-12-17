class Checklist < Microframe::ORM::Base
  property :id, type: :integer, primary_key: true
  property :name, type: :text

  create_table

end
