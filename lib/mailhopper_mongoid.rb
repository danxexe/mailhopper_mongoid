# HACK: Since we don't want to add ActiveRecord as a dependency, 
#       let's trick Ruby into thinking the file where Mailhopper::Email is defined was already loaded
mailhopper_gem_dir = Gem::Specification.find_by_name("mailhopper").gem_dir
$LOADED_FEATURES << "#{mailhopper_gem_dir}/app/models/mailhopper/email.rb"

# HACK: Let's load our own Mailhopper::Email class, with blackjack and hookers.
require File.expand_path('../../app/models/mailhopper/email', __FILE__)

require "mailhopper"
require "mailhopper_mongoid/engine"

module MailhopperMongoid
end
