# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

# custom error, semicolon forces a termination
class CustomError < StandardError; end

# raise_error is to assist in the test gracefully failing and failing in an expected manner
# blocks from the the entire test suite from crashing
RSpec.describe 'raise_error matcher' do
    
    def some_method
        # this is to deliberately cause an name error
        x
    end

    it 'can check for a specific error being raised' do
        # be explicit in providing a specific error message
        # generic/default error message encourages false positives and less specificity to what the error actually is

        #NameError points to the string argument for the it statement
        expect { some_method }.to raise_error(NameError)
        expect { 10 / 0 }.to raise_error(ZeroDivisionError)

        #List of errors: https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
    end

    it 'can also check for a user-created error' do
        # to automatically trigger an error:
        expect { raise CustomError }.to raise_error(CustomError)
    end
end
