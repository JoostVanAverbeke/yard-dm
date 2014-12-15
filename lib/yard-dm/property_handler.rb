require 'yard-dm/extensions'

module YARD
  module DM
    class PropertyHandler < YARD::Handlers::Ruby::Base

      include Extensions

      handles method_call(:property)

      def process
        nobj   = effected_namespace
        mscope = scope
        name   = statement.parameters[0].last
        property_type = statement.parameters[1].last
        field = field(statement.parameters[2]) if statement.parameters.size > 3


        if name.type == :symbol
          name = name.source[1..-1]

          register MethodObject.new(nobj, name, :class) do |o|
            o.visibility = :public
            o.source     = statement.source
            o.signature  = "def #{nobj}.#{name}(repository=nil)"
            o.parameters = [['repository', 'nil']]
          end

          register MethodObject.new(nobj, name, mscope) do |o|
            o.docstring  = "Returns the value of this property" +
                (field.nil? ? ".\n" : " which corresponds with the db field \'#{field}\'.\n") +
                "@return [#{property_type.source}] the value of this property"
            o.visibility = :public
            o.source     = statement.source
            o.signature  = "def #{name}"
          end

          register MethodObject.new(nobj, "#{name}=", mscope) do |o|
            o.visibility = :public
            o.source     = statement.source
            o.signature  = "def #{name}=(value)"
            o.parameters = [['value', nil]]
          end
        end
      end

      private
      def field(parameter)
        if parameter.last.source.match(':field')
          field = parameter.children[0].children[1].last.source
        end
      end
    end
  end
end
