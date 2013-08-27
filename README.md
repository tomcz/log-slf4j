# Log::SLF4J

Provides a jruby-compatible logger and Rails logger replacement that delegates to [SLF4J](http://www.slf4j.org/).

This gem is adapted from [rjack-slf4j](https://github.com/dekellum/rjack) by David Kellum in order to remove selection and bundling of SLF4J JARs. When loaded by a [Warbler](https://github.com/jruby/warbler)-bundled jruby application multiple implementations of SLF4J are found on the classpath and SLF4J is unable to pick one.

## Installation

Add this line to your application's Gemfile:

    gem "log-slf4j", :github => "tomcz/log-slf4j", :tag => "0.0.1"
    Note: the tag number should match the version of the gem.

And then execute:

    $ bundle

NOTE: Unlike rjack-slf4j this gem does NOT bundle any SLF4J JARs so it is up to you to ensure that the `slf4j-api-XXX.jar` is present on the classpath along with a suitable implementation, such as `slf4j-simple-XXX.jar` or [Logback](http://logback.qos.ch/).

## Usage

    require "log-slf4j"

    // logger can be used directly
    log = Log::SLF4J[ "my.app.logger" ]
    log.info "Hello World!"

    // or can replace the Rails logger
    Rails.logger = Log::SLF4J[BookStore::Application]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

This code is released under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
