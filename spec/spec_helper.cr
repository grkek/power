require "spec"
require "../src/power"

###
##
#

class Nested::Class; end

class Nested::Class::SubClass; end

class ImportAs
  include Power::Macros

  import Nested::Class, as: Klass

  def initialize
    Klass.new
  end
end

class Import
  include Power::Macros

  import Nested::Class, [SubClass]

  def initialize
    SubClass.new
  end
end

#
##
###
