module Ruby_Captivate

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../templates', __FILE__)
    class_option :template_engine
    require 'thor'

      def copy_files
        copy_file 'ruby_captivate.rb', 'config/initializers/ruby_captivate.rb'
      end

  end
end
