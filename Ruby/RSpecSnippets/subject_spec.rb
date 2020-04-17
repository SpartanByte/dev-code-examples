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

# showing unchanged default value
RSpec.describe Array do
    subject(:sally) do
        ['Sally', 'Smith']
    end

    it 'should have a length of two' do
        expect(subject.length).to eq(2)
        subject.pop
        expect(subject.length).to eq(1)
    end

    it 'sally should be unchanged' do
        expect(sally.length).to eq(2)
    end
 end

# another way, using only one line for declaring sally (subject)
 RSpec.describe Array do
    subject(:sally) { [3, 5] }
    
    it 'caches the object within an example' do
      expect(subject.length).to eq(2)
      subject.pop
      expect(subject.length).to eq(1)
    end
  
    it 'creates a new object for a new example' do
      expect(sally).to eq([3, 5])
    end
  end
  

# ################## one-liner syntax example ##################
RSpec.describe 'shorthand syntax' do
    subject { 5 }

    context 'with classic syntax' do
        it 'should equal 5' do
            expect(subject).to eq(5)
        end
    end

    # with one-liner syntax, rspec provides its own output text
    context 'with one-liner syntax' do
        it { is_expected.to eq(5) }
    end
end