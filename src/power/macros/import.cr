module Power
  module Macros
    # `Power::Macros::Import` contains the import mechanism macros
    # which use the `alias` keyword to abstract the importing
    # and reduce the LOC.
    module Import
      # Requires an `:as` keyword argument to function
      # properly, it simply aliases the as keyword argument module/class
      # to the first argument.
      macro import(object, **kwargs)
        private alias {{kwargs[:as]}} = {{object}}
      end

      # Requires a module name as a first argument and
      # a class array, it simply iterates through the classes and
      # aliases them to the module.
      macro import(module_name, class_names)
        {% for class_name in class_names %}
          private alias {{class_name}} = {{module_name}}::{{class_name}}
        {% end %}
      end
    end
  end
end
