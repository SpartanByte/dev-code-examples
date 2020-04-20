# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/


RSpec.describe 'satisfy matcher' do
    subject{ 'racecar' }

    it 'is a palindrome' do
        #does not require a string argument but does require a single argument and a comparison that will equal a boolean
        expect(subject).to satisfy { |value| value == value.reverse }
    end

    it 'can accept a custom error' do
        expect(subject).to satisfy('be a palindrome') do |value| 
            value == value.reverse
        end
    end
end