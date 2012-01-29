require 'securerandom'

module ruby_captivate
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a ruby_captivate initializer and copies locale files to your application."
      class_option :orm

      def copy_initializer
        template "ruby_captivate.rb", "config/initializers/devise.rb"
      end

      def copy_locale
        copy_file "../../../config/locales/en.yml", "config/locales/ruby_captivate.en.yml"
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
