require 'spec_helper'

describe Lawyer do
  before { @lawyer = Lawyer.new(name: "Rahul", code: "Rah101", location: "Delhi", rating: 9, experience: 2)}

  subject { @lawyer }

  it { should respond_to(:name) }
  it { should respond_to(:code) }
  it { should respond_to(:location) }
  it { should respond_to(:experience) }
  it { should respond_to(:rating) }
end
