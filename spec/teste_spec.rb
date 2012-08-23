require 'spec_helper'

describe "about rSpec" do
  # forma nova - OK
  it "expect { true }.to be_true" do
    expect { true }.to be_true
  end

  # forma antiga, não usar mais assim
  it "true.should be_true" do
    true.should be_true
  end
end

