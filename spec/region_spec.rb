require 'spec_helper'

describe Region do
  it { should have_many :sightings }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end
