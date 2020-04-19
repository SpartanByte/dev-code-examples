# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end
    
    def purchase(number)
        "I just purchased #{number} more hot chocolate beverages"
    end
end

# implement polymorphism to set what an object can respond to
class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end

RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        # method name passed in as a symbol
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
    end

    it 'confirms that an object can respond to a method with arguments' do
        expect(subject).to respond_to(:purchase)
        # with argument
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    # one-liner syntax
    it { is_expected.to respond_to(:purchase, :discard)}
    it { is_expected.to respond_to(:purchase, :discard).with(1).arguments }
end
