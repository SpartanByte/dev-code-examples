# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'contain_exactly matcher' do

    subject { [1, 2, 3] }

    describe 'long form syntax' do
        
        it 'should check for the presence of all elements' do
            #it doesn't matter what order it finds all the elements but only cares if it finds all the elements
            expect(subject).to contain_exactly(1, 2, 3) #pass
            expect(subject).to contain_exactly(3, 2, 1) #pass

            expect(subject).to contain_exactly(3, 1) #fail
        end
    end
    it { is_expected.to contain_exactly(3, 2, 1) } # pass
end