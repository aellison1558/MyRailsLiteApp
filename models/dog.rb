require_relative 'active_record_base'
require_relative 'human'
class Dog < SQLObject
  self.finalize!

  self.belongs_to 'owner',
    class_name: "Human",
    foreign_key: :owner_id,
    primary_key: :id

end
