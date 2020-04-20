# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

# spies an alternative type of test double that support this pattern by allowing you to 
# expect that a message has been received after the fact, using 'have_received'
# https://relishapp.com/rspec/rspec-mocks/docs/basics/spies 


RSpec.describe 'spies' do
    let(:animal) { spy('animal')}

    it 'confirms that a message has been received' do
        animal.eat_food
        # with spies, expectation is after the method is invoked
        expect(animal).to have_received(:eat_food)
    end

    it 'resets between examples' do
        # separation from the above expectation
        expect(animal).not_to have_received(:eat_food)
    end

    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food('Sushi')
        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).once.with.('Sushi')
    end
end

# using allow method starting here ######
class Car 
    def initialize(model)
        @model = model
    end
end

class Garage
    attr_reader :storage

    def initialize
        @storage = []
    end

    def add_to_collection(model)
        # when found, push this into the storage array
        @storage << Car.new(model)
    end
end

RSpec.describe Garage do
    let(:car) { instance_double(Car) }

    before do
        allow(Car).to receive(:new).and_return(car)
    end

    it 'adds a car to its storage' do
        subject.add_to_collection('Honda Civic')
        expect(Car).to have_received(:new).with('Honda Civic')
        expect(subject.storage.length).to eq(1)
    end
end