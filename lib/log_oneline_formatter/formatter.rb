module LogOnelineFormatter
  # Default formatter for log messages.
  class Formatter
    def initialize(target = ::Logger::Formatter)
      target.class_eval do
        def call_no_line_end(severity, time, progname, msg)
          call_without_no_line_end(severity, time, progname, msg.gsub(/\n/, '\n'))
        end

        alias_method :call_without_no_line_end, :call
        alias_method :call, :call_no_line_end
      end

      @target = target.new
    end

    def call(severity, time, progname, msg)
      @target.call(severity, time, progname, msg)
    end
  end
end
