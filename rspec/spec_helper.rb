$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'sqlite3'
require 'activerecord'
require 'acts_as_random'

ActiveRecord::Base.send(:include, Acts::AsRandom)

ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.colorize_logging = false

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :dbfile  => ":memory:"
)

ActiveRecord::Schema.define do
    create_table :cool_elements do |table|
    end
end

