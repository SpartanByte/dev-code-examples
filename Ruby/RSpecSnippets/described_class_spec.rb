# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)


# ################## described_class example ##################
class King
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

RSpec.describe King do
    # using described_class references the class in describe so if 'King' is ever changed to 'Royal', you don't have to update all of the tests .new or instantiations
    # this would be best practice to do from the beginning and make tests easier to update
    subject { described_class.new('Boris') }
    let(:louis) { described_class.new('Louis') }

    it 'represents a great person' do
        expect(subject.name).to eq('Boris')
        expect(louis.name).to eq('Louis')
    end
end
