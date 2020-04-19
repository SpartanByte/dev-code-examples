# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'all matcher' do
    
    it 'allows for aggregate checks' do
        #long form version
        [5, 7, 9].each do |value|
            expect(value).to be_odd
        end

        #shorthand syntax version
        expect([5, 7, 9]).to all(be_odd)
        expect([4, 6, 8]).to all(be_even)
        expect([ [], [], [] ]).to all(be_empty)
        expect([5, 7, 9]).to all(be < 10)
    end

    #one liner version
    describe [5, 7, 9] do
        it { is_expected.to all(be_odd)}
    end
end