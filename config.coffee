exports.config =
  paths:
    public: 'lib'
    watched: ['src', 'test']
  files:
    javascripts:
      joinTo:
        'teamsnap.js': /^src\//
        'test/js/test.js': /^test\//

  modules:
    nameCleaner: (path) ->
      path.replace(/^src\//, '')

  overrides:
    production:
      files:
        javascripts:
          joinTo:
            'teamsnap.min.js': /^src\//

  server:
    indexPath: 'lib/test/index.html'
    port: 8000

  plugins:
    on: ['library-brunch']
    library:
      main: 'teamsnap'
      global: true

    uglify:
      mangle:
        except: ['window', 'global']

    coffeelint:
      pattern: /^src\/.*\.coffee$/
      options:
        coffeescript_error:
          level: "error"
        arrow_spacing:
          name: "arrow_spacing"
          level: "warn"
        no_tabs:
          name: "no_tabs"
          level: "error"
        no_trailing_whitespace:
          name: "no_trailing_whitespace"
          level: "warn"
          allowed_in_comments: false
          allowed_in_empty_lines: true
        max_line_length:
          name: "max_line_length"
          value: 80
          level: "warn"
          limitComments: true
        line_endings:
          name: "line_endings"
          level: "ignore"
          value: "unix"
        no_trailing_semicolons:
          name: "no_trailing_semicolons"
          level: "error"
        indentation:
          name: "indentation"
          value: 2
          level: "error"
        camel_case_classes:
          name: "camel_case_classes"
          level: "error"
        colon_assignment_spacing:
          name: "colon_assignment_spacing"
          level: "warn"
          spacing:
            left: 0
            right: 1
        no_implicit_braces:
          name: "no_implicit_braces"
          level: "ignore"
          strict: true
        no_plusplus:
          name: "no_plusplus"
          level: "ignore"
        no_throwing_strings:
          name: "no_throwing_strings"
          level: "error"
        no_backticks:
          name: "no_backticks"
          level: "error"
        no_implicit_parens:
          name: "no_implicit_parens"
          level: "ignore"
        no_empty_param_list:
          name: "no_empty_param_list"
          level: "warn"
        no_stand_alone_at:
          name: "no_stand_alone_at"
          level: "ignore"
        space_operators:
          name: "space_operators"
          level: "warn"
        duplicate_key:
          name: "duplicate_key"
          level: "error"
        empty_constructor_needs_parens:
          name: "empty_constructor_needs_parens"
          level: "ignore"
        cyclomatic_complexity:
          name: "cyclomatic_complexity"
          value: 10
          level: "ignore"
        newlines_after_classes:
          name: "newlines_after_classes"
          value: 3
          level: "ignore"
        no_unnecessary_fat_arrows:
          name: "no_unnecessary_fat_arrows"
          level: "warn"
        missing_fat_arrows:
          name: "missing_fat_arrows"
          level: "ignore"
        non_empty_constructor_needs_parens:
          name: "non_empty_constructor_needs_parens"
          level: "ignore"
