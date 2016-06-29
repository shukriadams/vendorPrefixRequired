module SCSSLint
    class Linter::VendorPrefixRequired < Linter
        include LinterRegistry


        def visit_root(_node)

            @properties = [
                'animation',
                'box-shadow',
                'column-count',
                'column-gap',
                'column-rule',
                'filter',
                'flex',
                'font-feature-settings',
                'hyphens',
                'transform'
            ]

            @values = ['flex']

            if (config['properties'] != nil)
                @properties = config['properties']
            end

            if (config['values'] != nil)
                @values = config['values']
            end

            yield # Continue linting children
        end


        def visit_prop(node)
            property = node.name.join
            value = ''

            if node.value.respond_to?(:value)
                value = node.value.value.to_s
            end

            if @properties.include?(property)
                add_lint(node, "Property #{property} should be wrapped with a vendor-prefix mixin.")
            end

            if @values.include?(value)
                add_lint(node, "Value #{value} should be wrapped with a vendor-prefix mixin.")
            end
        end

    end
end
