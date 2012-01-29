module Ruby_Captivate

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../templates', __FILE__)
    class_option :template_engine

    if ::Rails::VERSION::MAJOR == 3 && ::Rails::VERSION::MINOR >= 1

      desc "Copies a config initializer to config/initializers/formtastic.rb"
      def copy_files
        copy_file 'ruby_captivate.rb', 'config/initializers/ruby_captivate.rb'
      end
    else

      desc "Copies some CSS files to public/stylesheets/ and a config initializer to config/initializers/formtastic.rb"

    end


  end
end
