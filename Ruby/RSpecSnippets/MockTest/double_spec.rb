# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'a random double' do
    # remember, doubles are in the context of 'stand ins' for real objects in the app
    it 'only allows defined methods to be invoked' do

        # syntax option 1
        stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)

        # syntax option 2
        stuntman = double("Mr. Danger")
        allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end
end