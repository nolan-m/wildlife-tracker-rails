require 'spec_helper'

describe Sighting do
  it { should belong_to :animal }
  it { should belong_to :region }
  it { should validate_presence_of :date }
  it { should validate_presence_of :time }
end
