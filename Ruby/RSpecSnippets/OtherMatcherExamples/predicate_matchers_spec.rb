# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

# predicate methods are boolean methods and always follow with a ?
# other examples of predicate ruby methods are .empty? .odd? .even? .zero? etc

RSpect.describe 'predicate methods and predicate matchers' do
    
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end

    it 'can be tested with predicate matchers' do
        expect(16 / 2).to be_even
        # you can add be_ to any ruby predicate method and ruby will understand that you invoking that method
        # Lines 10-11 and 15 have the exact same result
        expect(16 / 2).not_to be_even

        expect(15).to be_odd
        expect(0).to be_zero
        expect([]).to be_empty
    end
end
