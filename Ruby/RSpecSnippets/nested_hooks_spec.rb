# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

RSpec.describe 'nested hooks' do 

    before(:context) do
        puts 'Before context'
    end

    before(:example) do
        puts 'Before example'
    end
    
    it 'does basic math' do
        expect(1 + 1).to eq(2)
    end
end