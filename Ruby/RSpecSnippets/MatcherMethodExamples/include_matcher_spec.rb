# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'include matcher' do
   
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot') # pass
            expect(subject).to include('choc') # pass
            expect(subject).to include('late') # pass
            expect(subject).to include('Hot') # fail?
        end
        it { is_expected.to include('choc') }
    end

    describe [10, 20, 30] do
        it 'checks for inclusion in the array, regardless of order' do
            expect(subject).to include(10) # pass
            expect(subject).to include(10, 20) # pass
        end

        it { is_expected.to include(20, 30, 10) } # pass
        it { is_expected.to include(20, 30, 40) } # fail
    end

    describe ({a: 2, b: 4}) do
        # this can check for a specific key or it can check for a specific key, value pair
        it 'can check for a key existence regardless of order' do
            expect(subject).to include(:a) # pass
            expect(subject).to include(:a, :b) # pass
            expect(subject).to include(:b, :a) # pass
        end

        it 'can check for key-value pair' do
            expect(subject).to include(a: 2) # pass
        end
    end
end