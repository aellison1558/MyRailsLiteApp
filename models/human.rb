require_relative 'active_record_base'
require_relative 'dog'
class Human < SQLObject
  self.table_name = 'humans'
  self.finalize!

end
