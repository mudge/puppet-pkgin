$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "puppet"

# We need this because the RAL uses 'should' as a method.  This
# allows us the same behaviour but with a different method name.
class Object
  alias :must :should
end
