require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', 'John Doe')
    @project2 = Project.new('Project 2', 'description 2', 'Jane Doe')
  end
   
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it 'has a getter and setter for owner attribute' do
    @project1.owner = "Changed Owner"
    expect(@project1.owner).to eq("Changed Owner")
  end

  it 'has a method tasks to print all tasks' do
    expect(@project1.tasks).to eq([])
    expect(@project2.tasks).to eq([])
  end

  it 'has a method add_tasks to add a new task' do
    expect(@project1.add_tasks("adding new task")).to eq(["adding new task"])
    expect(@project2.add_tasks("adding new task")).to eq(["adding new task"])
  end

  it 'has a method print_tasks to print each task' do
    expect(@project1.print_tasks).to eq([])
  end
  
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
end