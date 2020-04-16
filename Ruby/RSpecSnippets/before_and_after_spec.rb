# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

RSpec.describe 'before and after' do 

    before(:example) do
        puts 'Before example'
    end

    after(:example) do
        # this helps in avoiding instantiating objects more than once
        # aids in performance but is otherwise only a preference
        puts 'After example'
    end

    #more complex, will run before the context it's currently in
    before(:context) do
        puts 'After context'
    end

    it 'is just a random example'do
        expect(5 * 4).to eq(20)
    end

    it 'is just another random example' do
        expect(3 - 2).to eq(1)
    end
end