require 'spec_helper'
require 'date'

describe LogOnelineFormatter do
  it 'has a version number' do
    expect(LogOnelineFormatter::VERSION).not_to be nil
  end

  context 'instance method' do
    it ('have call method') { expect(LogOnelineFormatter::Formatter.new).to respond_to(:call) }
    xit ('have call_no_line_end method') { expect(LogOnelineFormatter::Formatter.new).to respond_to(:call_no_line_end) }
    xit ('have call_without_no_line_end method') { expect(LogOnelineFormatter::Formatter.new).to respond_to(:call_without_no_line_end) }
  end

  context 'call result' do
    it ('one line') { expect(LogOnelineFormatter::Formatter.new.call('',DateTime.now,'','test')).to match '.*test$' }
    it ('two line') {
      line = <<-EOS
test
test2
EOS
      expect(LogOnelineFormatter::Formatter.new.call('',DateTime.now,'',line)).to match ".*test\\\\ntest2\\\\n$"
    }
  end
end
