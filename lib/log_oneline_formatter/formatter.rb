require 'logger'

module LogOnelineFormatter
  class Formatter
    def initialize(target = ::Logger::Formatter)
      unless target.new.respond_to?(:call_without_no_line_end)
        target.class_eval do
          def call_no_line_end(severity, time, progname, msg)
            call_without_no_line_end(severity, time, progname, msg.gsub(/\n/, '\n'))
          end

          alias_method :call_without_no_line_end, :call
          alias_method :call, :call_no_line_end
        end
      end

      @target = target.new
    end

    def call(severity, time, progname, msg)
      @target.call(severity, time, progname, msg)
    end
  end
end
