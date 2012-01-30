module Ruby_Captivate
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a ruby_captivate initializer and copies locale files to your application."
      class_option :orm

      def add_controller
        template "captivate_results_controller.rb", "app/controllers/captivate_results_controller.rb"
      end

      def add_captivate_routes
        captivate_route  = "match '/internalreport', :to => 'captivate_results#process_results'"
        route captivate_route
      end
    end
end
