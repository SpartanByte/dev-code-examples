# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

RSpec.describe 'nested hooks' do
    before(:context) do
        # only runs once within the current context
        puts 'OUTER Before context'
    end
  
    before(:example) do
        # runs before EACH example
        puts 'OUTER Before example'
    end
  
    it 'does basic math' do
        expect(1 + 1).to eq(2)
    end
  
    context 'with condition A' do
        before(:context) do
            # only runs once within the current context
            puts 'INNER Before context'
        end
    
        before(:example) do
            # runs before EACH example
            puts 'INNER Before example'
        end
  
        it 'does some more basic math' do
            expect(1 + 1).to eq(2)
        end
  
        it 'does subtraction as well' do
            expect(5 - 3).to eq(2)
        end
    end
end