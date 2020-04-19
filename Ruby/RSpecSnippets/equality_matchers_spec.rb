#equality matchers: eq, eql, and equal
RSpec.describe 'equality matchers' do
    
    #set up variables
    let(:a) { 3.0 }
    let(:b) { 3 }

    describe 'eq matcher' do
        it 'tests for value and ignores data type' do
            expect(3).to eq(3.0)
            # this will pass because eql doesn't care about type
        end
    end

    describe 'eql matcher' do
        it 'tests for the value, including the same type' do
            expect(3).not_to eq(3.0)
            expect(a).not_to eq(b)
            # will bass as untrue
            # must be of the same numerical value and the same data type
        end
    end

    # equal is the same as the be matcher and vice versa
    describe 'equal and be matcher' do
        let(:c) { [1, 2, 3] }
        let(:d) { [1, 2, 3] }
        let(:e) { c }
        # equal checks for truly identical. They are different arrays but with the same value
        # e == c, e != d

        it 'cares about object identity' do
            expect(c).to eq(d)
            expect(c).to eql(d)
            
            # c does have the same identity as e, only has a different name
            expect(c).to equal(e)
            # d does not have the same identity as e
            expect(d).not_to (e)
        end
    end
end