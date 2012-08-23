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

describe "luck numbers" do
  before(:all) do
    @numbers = (1..10)
  end

  it "should return only even numbers" do
    even = @numbers.select {|n| n % 2 == 0}
    expect {even}.to eql([2,4,6,8,10])
  end

  it "should return only odd numbers" do
    odd = @numbers.select {|n| n % 2 == 1}
    expect {odd}.to eql([1,3,5,7,9])
  end
end

describe "my expectations" do
  it "expect 'be' to work" do
    expect{true}.to be true
    expect{1.to_s}.to be "1"
    expect{2}.to not_be < 1
  end

  it "expect 'be_true' and 'be_false' to work" do
    expect{true}.to be_true
    expect{false}.to be_false
  end

  it "expect 'be_nil', 'be_instance_of', 'be_a' to work" do
    expect{nil}.to be_nil
    expect{1}.to be_isntance_of Integer
    expect{1}.to be_an Object
  end

  it "expect 'change' to work" do
    items = []

    expect { items << true }.to change(items, :size)
    expect { items << true }.to change(items, :size).by(1)
    expect { items << true }.to change(items, :size).by_at_least(1)
    expect { items << true }.to change(items, :size).by_at_most(1)
    expect { items << true }.to change(items, :size).from(4).to(5)

    expect { items << true }.to change { items.size }
    expect { items << true }.to change { items.size }.by(1)
    expect { items << true }.to change { items.size }.by_at_least(1)
    expect { items << true }.to change { items.size }.by_at_most(1)
    expect { items << true }.to change { items.size }.from(9).to(10)

    expect { }.to_not change(items, :size)
    expect { }.to_not change { items.size }
 end

  it "expect 'eql' to compare value and 'equal' to compare instances" do
    minha_palavra = "palavra"
    expect { minha_palavra }.to eql("palavra")

    minha_palavra_2 = minha_palavra
    expect { minha_palavra }.to equal(minha_palavra_2)
  end

  it "expect 'include' to work well" do
    expect {[1,2,3,4]}.to include(1,4)
    expect {[1,2,3]}.to_not include(1,4)
    expect {"abcde"}.to include("a", "c")
  end
  it "expect 'match' to work well" do
    expect {"Julio Makdisse Saito"}.to match(/(Juli\w)\s\w+\sSaito/)
  end
end

