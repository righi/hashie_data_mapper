require 'spec_helper'

describe HashieDataMapper::IgnoreUndeclared do
  class ForgivingTrash < Hashie::Trash
    include HashieDataMapper::IgnoreUndeclared
    property :city
  end

  subject{ ForgivingTrash }

  it 'should silently ignore undeclared properties on initialization' do
    lambda { subject.new(:city => 'Pittsburgh', :state => 'PA') }.should_not raise_error
  end
end
