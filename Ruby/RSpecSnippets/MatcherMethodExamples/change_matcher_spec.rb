# RSPEC SNIPPETS (DOES NOT INCLUDE CAPYBARA)
# Credit:: https://www.udemy.com/course/testing-ruby-with-rspec/

RSpec.describe 'change matcher' do
   subject { [1, 2, 3] }
   
   it 'checks that a method changes object state' do
       # this version works but is inflexible 
       expect { subject.push(4) }.to change { subject.length }.from(3).to(4)

       #this version is more dynamic and would be considered best practice
       expect { subject.push(4) }.to change { subject.length }.by(1)
   end

   it 'accepts netgative arguments' do
       expect { subject.pop }.to change {subject.length}.by(-1)
   end
end