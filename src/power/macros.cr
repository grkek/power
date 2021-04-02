require "./macros/*"

module Power
  # `Power::Macros` contain the include paths of the
  # modules which contain the actual helper macros.
  module Macros
    include Import
  end
end