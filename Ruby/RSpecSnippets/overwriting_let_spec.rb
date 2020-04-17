# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)

# class for sample
class ProgrammingLanguage
    attr_reader :name

    def initialize(name = 'Ruby')
        @name = name
    end
end

# Anything that's defined in a higher level scope/block is going to be able to every child/nested scope that's within it
RSpec.describe ProgrammingLanguage do
    let(:language) { ProgrammingLanguage.new('Python') }

    it 'should store the name of language' do
        expect(language.name).to eq('Python')
    end

    context 'with no argument' do
        # this let line allows RSpec to find 'language' value within the current scope
        let(:language) { ProgrammingLanguage.new }
        it 'should default to Ruby as the name' do
            expect(language.name).to eq('Ruby')
        end
    end
end