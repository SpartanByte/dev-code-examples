# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

# nested describe blocks using 'context' method
# 'context' is only an alias for 'describe', more readable when nested
# this will print test output in the terminal indented, better organization
Example:
#even? method
    # with even number
    #     should return true
    # with odd number
    #     should return false

Rspect.describe '#even? method' do

    context 'with even number' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    context 'with odd number' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end
end
