require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'

IRB.conf[:SAVE_HISTORY] = 1000000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.history/ruby"
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

class Object

 def i!(obj = self)
   ap obj
   obj
 end

 # list methods which aren't in superclass
 def local_methods(obj = self)
  (obj.methods - obj.class.superclass.instance_methods).sort
 end

 # print documentation
 def ri(method = nil)
  unless method && method =~ /^[A-Z]/ # if class isn't specified
   klass = self.kind_of?(Class) ? name : self.class.name
   method = [klass, method].compact.join('#')
  end
  puts `ri '#{method}'`
 end

end

ANSI = {}
ANSI[:RESET]     = "\e[0m"
ANSI[:BOLD]      = "\e[1m"
ANSI[:UNDERLINE] = "\e[4m"
ANSI[:LGRAY]     = "\e[0;37m"
ANSI[:GRAY]      = "\e[1;30m"
ANSI[:RED]       = "\e[31m"
ANSI[:GREEN]     = "\e[32m"
ANSI[:YELLOW]    = "\e[33m"
ANSI[:BLUE]      = "\e[34m"
ANSI[:MAGENTA]   = "\e[35m"
ANSI[:CYAN]      = "\e[36m"
ANSI[:WHITE]     = "\e[37m"

# Loading extensions of the console. This is wrapped
# because some might not be included in your Gemfile
# and errors will be raised
def extend_console(name, care = true, required = true)
  if care
    require name if required
    yield if block_given?
    $console_extensions << "#{ANSI[:GREEN]}#{name}#{ANSI[:RESET]}"
  else
    $console_extensions << "#{ANSI[:GRAY]}#{name}#{ANSI[:RESET]}"
  end
rescue LoadError
  $console_extensions << "#{ANSI[:RED]}#{name}#{ANSI[:RESET]}"
end
$console_extensions = []

# Wirble is a gem that handles coloring the IRB
# output and history
extend_console 'wirble' do
  Wirble.init
  Wirble.colorize
end

extend_console 'awesome_print' do
  alias pp ap
end

extend_console 'bond' do
  Bond.start
end

