# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

class ProfessionalAthlete
    attr_reader :name, :sport

    def initialize(name, sport)
        @name = name
        @sport = sport
    end
end

RSpec.describe 'have_attributes matcher' do
    describe ProfessionalAthlete.new('Mikko Koivu', 'Hockey') do
        it 'checks for object attribute and proper values' do
            expect(subject).to have_attributes(name: 'Mikko Koivu', sport: 'Hockey') # pass
        end

        it { is_expected.to have_attributes(name: 'Mikko Koivu', sport: 'Hockey')} # pass
        it { is_expected.to have_attributes(name: 'Mikko Koivu')} # pass
    end
end