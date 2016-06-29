Vendor Prefix Required
===
A linter for scss-lint (https://github.com/brigade/scss-lint). Warns if properties or property values are unwrapped by a mixin. Use vendor-prefixing mixins on such values.

Properties handled by default : animation, box-shadow, column-count, column-gap, column-rule, filter, flex, font-feature-settings, hyphens, transform.

Values handled by default : flex.

Config
---

linters:

    VendorPrefixRequired:
        # set to true to enable
        enabled: true
        # custom array of properties to watch, this overrides the default list
        properties : [animation, transform]
        # custom array of values to watch, this overrides the default list
        values : []

Use
---
This linter is currently not available as a Gem. To use it, place /lib/VendorPrefixRequired.rb in a folder on your system, then add that folder to your .scss-lint.yml file as follows

    plugin_directories: ['/foo/bar']