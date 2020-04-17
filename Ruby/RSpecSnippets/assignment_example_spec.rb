# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# credit: practice from https://www.udemy.com/course/testing-ruby-with-rspec

RSpec.describe 'multi context hooks' do
    before(:context) do
        puts 'K'
    end
   
    before(:example) do
        puts 'Z'
    end
   
    after(:example) do
        puts 'E'
    end
   
    it 'can multiply' do
        expect(3 * 7).to eq(21)
    end
   
    it 'can divide' do
        expect(40 / 8).to eq(5)
    end
   
    context 'with some criteria' do
        before(:context) do
            puts 'H'
        end
   
        before(:example) do
            puts 'B'
        end
   
        it 'can subtract' do
            expect(10 - 5).to eq(5)
        end
   
        context 'in this condition' do
            before(:example) do
                puts 'V'
            end
   
            it 'can add' do
                expect(8 + 6).to eq(14)
            end
        end
    end
end

# This is for following the order in which nested before/after context/examples are executed
# Expected Output:
# K
# Z
# E
# Z
# E
# H
# Z
# B
# E
# Z
# B
# V
# E