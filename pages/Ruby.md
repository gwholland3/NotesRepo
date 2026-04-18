Wikipedia: [link](https://en.wikipedia.org/wiki/Ruby_(programming_language))

Ruby seems somewhat Python-like… it's interpreted and dynamically typed.

There's a tool called `ri` that is some sort of interface to Ruby documentation.

## REPL
The default REPL for Ruby is `irb`.

There is an alternative REPL called `pry`, which you can install as a gem I believe.

## Gems
In Ruby, packages are called "gems".
Most gems are pure Ruby code, though some have a C extension for improved performance.
I'm guessing the usage of non-Ruby extensions works roughly like this:
- Ruby interpreter is executing Ruby program and comes across a `require '<gem>'` statement
- It loads in the gem
- The Ruby program invokes a method from the gem that relies on a native C extension
- The method uses some special command to tell the Ruby interpreter to execute the C binary
	- Not sure what the handoff looks like here - maybe it's already linked to the Ruby interpreter executable somehow?
Helpful SO post: [https://stackoverflow.com/questions/31202707/what-exactly-is-a-gem-native-extension#31203017](https://stackoverflow.com/questions/31202707/what-exactly-is-a-gem-native-extension#31203017)

There is a `gem` tool that is responsible for managing dependencies amongst gems.
Documentation on the gem system: [https://guides.rubygems.org/](https://guides.rubygems.org/)

There is also a `bundle` tool (referred to as "Bundler") that is responsible for building gems and installing them for a Ruby project.

Each gem has a `.gemspec` file that describes that gem's dependencies on other gems.

If you have a personal project (that is not itself a gem) and you want to specify which gems it depends on, you put that information in a `Gemfile` config that gets read by Bundler.