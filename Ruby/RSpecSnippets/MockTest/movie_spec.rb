# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

#for illustrating doubles in example: movie stunt doubles
class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        # pauses the test for (x) number of seconds
        sleep(3)
        true
    end

    def act 
        "I'll be back"
    end

    def fall_off_ladder
        "Call my agent"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            puts actor.act
            puts actor.fall_off_ladder
            puts actor.light_on_fire
        end
    end
end


# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    #using a double to simulate an Actor object
    let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string at all', fall_off_ladder: 'Sure! Lets do it', light_on_fire: true) }
    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
        it 'expects an actor to do three actions' do
            # expect(stuntman).to receive(:ready?)
            # expect(stuntman).to receive(:act)
            # expect(stuntman).to receive(:fall_off_ladder)
            # expect(stuntman).to receive(:light_on_fire)

            #.once says you only want to receive it once, any more or less will result in a failure
            #.exactly allows you to set a specific number of times
            # you can only use one of these, they are just different versions of syntax
            expect(stuntman).to receive(:light_on_fire).once
            expect(stuntman).to receive(:light_on_fire).exactly(1).times
            expect(stuntman).to receive(:light_on_fire).at_most(1).times
            expect(stuntman).to receive(:light_on_fire).at_least(1).times
            subject.start_shooting
        end
    end
end