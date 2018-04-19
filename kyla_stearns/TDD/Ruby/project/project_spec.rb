#include our Project class in our spec file
require_relative 'project' 

RSpec.describe Project do
	before(:each) do
		# create a new project and make sure we can set the name attribute 
		@project1 = Project.new('Project 1', 'description 1', 'John Doe') 
		@project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
	end

	it 'has a getter and setter for name attribute' do 
		# this line would fail if our class did not have a setter method
		@project1.name = "Changed Name"
		# this line would fail if we did not have a getter or if it did not change the name successfully
		expect(@project1.name).to eq("Changed Name")
		# p @project1.name, "new project name"
		
	end

	it 'has a method elevator_pitch to explain name, descripton and owner' do 
		# p @project1.name, 'in elevator_pitch name'
		expect(@project1.elevator_pitch).to eq('Project 1, description 1, John Doe')
		expect(@project2.elevator_pitch).to eq('Project 2, description 2, Jane Doe')
	end

	it 'has a getter and setter for owner attribute' do 
		# this line would fail if our class did not have a setter method
		@project1.owner = "Bobby Joe"
		expect(@project1.owner).to eq("Bobby Joe")
	end

	it 'has a getter and setter for task methods' do 
		# this line would fail if our class did not have a setter method
		@project1.add_tasks('Send Memo')
		expect(@project1.tasks).to eq(['Send Memo'])

		@project1.add_tasks('Place Catering Order')
		expect(@project1.tasks).to eq(['Send Memo', 'Place Catering Order'])
		
		@project1.print_tasks
		expect(@project1.tasks).to eq(['Send Memo', 'Place Catering Order'])
	end
end
