require "fsr/app"
module FSR
  module App
    # http://wiki.freeswitch.org/wiki/Misc._Dialplan_Tools_log
    class ExecuteApp < Application
      def self.app_name
        "execute_app"
      end

      attr_reader :app_name, :arguments

      def initialize(app, *args)
        @app_name = app
        @arguments = args
      end
    end

    register ExecuteApp
  end
end