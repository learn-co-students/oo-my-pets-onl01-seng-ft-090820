require_relative 'spec_helper.rb'

describe Owner do

  before do
    @owner = Owner.new("Victoria")
  end

  context 'Instance methods' do

    describe "#name" do
      it "can have a name" do
        expect(@owner.name).to eq("Victoria")
      end

      it "cannot change owner's name" do
        expect { @owner.name = "Beckham" }.to raise_error NoMethodError
      end
    end

    describe "#species" do
      it "initializes with species set to human" do
        expect(@owner.species).to eq("human")
      end

      it "can't change its species" do
        expect { @owner.species = "hamster" }.to raise_error NoMethodError
      end
    end

    describe "#say_species " do
      it "can say its species" do
        expect(@owner.say_species).to eq("I am a human.")
      end
    end
  end
end
