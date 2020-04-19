# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpect.describe 'comparison matchres' do
    
    it 'allows for compirson with built in Ruby operators'
        expect(10).to be > 5
        expect(8).to be < 15
        expect(1).to be <= -1
    end

    # if you pass through an actual object rather than a class, rspec will automatically make this the subject
    # same as writing this inside: subject { 100 }
    describe 100 do
        it { is_expected.to be > 90 }
        it { is_expected.to be >= 100 }
        it { is_expected.to be < 500 }
    end
end
