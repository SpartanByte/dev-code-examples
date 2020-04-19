# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'start_with and end_with matchers' do
    describe 'caterpillar' do
        it 'should check for substring at the beginning or end' do
            expect(subject).to start_with('cat') # pass
            expect(subject).to end_with('pillar') # pass

            # this IS case SENSITIVE
            expect(subject).to start_with('Cat') # fail
        end

        it { is_expected.to start_with('cat') } # pass
        it { is_expected.to end_with('pillar') } # pass
        it { is_expected.to start_with('Cat') } # fail
    end

    describe [:a, :b, :c, :d] do
        it 'should check for elements at the beginning or end of an array' do
            expect(subject).to start_with(:a) #pass
            #order does matter
            expect(subject).to start_with(:a, :b) #pass
            expect(subject).to start_with(:a, :c) #fail
        end
    end
end