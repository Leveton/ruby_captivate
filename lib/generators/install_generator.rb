module ruby_captivate
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a ruby_captivate initializer and copies locale files to your application."
      class_option :orm

     def add_my_initializer
      template "ruby_captivate.rb", "config/initializers/ruby_captivate.rb"
    end
    end
end
