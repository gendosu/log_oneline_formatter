module LogOnelineFormatter
  # Default formatter for log messages.
  class Formatter
    def initialize(target = ::Logger::Formatter)
      target.class_eval do
        def msg2str_no_line_end(msg)
          msg2str_without_no_line_end(msg.gsub(/\n/, '\n'))
        end

        alias_method :msg2str_without_no_line_end, :msg2str
        alias_method :msg2str, :msg2str_no_line_end
      end

      @target = target.new
    end

    def call(*arg)
      @target.call(*arg)
    end
  end
end
