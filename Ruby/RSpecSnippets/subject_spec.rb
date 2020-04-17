# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

# subject method (implicit)
# whatever class is passed through the describe block, subject automatically instantiates that class and creates an object from it
RSpec.describe Hash do
   it 'should start off empty' do
       expect(subject.length).to eq(0)
       # can also output information
       puts subject
       puts subject.class
       # expected output:
       # {}
       # Hash
       # you can then add to this and update the object
       subject[:some_key] = "Some Value"
       expect(subject.length).to eq(1)
   end

   # due to scope, the following is a brand new hash
   it 'is isolated between examples' do
       expect(subject.length).to eq(0)
       #passes
   end
end

# subject method (explicit)
RSpec.describe Hash do
    subject do
        { a: 1, b: 2 }
    end

    # with an argument
    subject(:company) do
        { a: 'Company One', b: 'Company Two', c: 'Company Three' }
    end

    it 'has two key-value pairs' do
        expect(subject.length).to eq(2)
        # true

        expect(company.length).to eq(3)
        # true
    end

    describe 'nested example' do
        it 'has two key-value pairs' do
            # subject is defined outside so it is available to all child levels
            expect(subject.length).to eq(2)
            # true
    
            expect(company.length).to eq(3)
            # true
        end
    end
end