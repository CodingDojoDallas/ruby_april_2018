require_relative 'apple_tree'

RSpec.describe Apple_Tree do
    before(:each) do
        @tree1 = Apple_Tree.new
        @tree2 = Apple_Tree.new
    end

    it 'has a getter and setter for age attribute' do
        @tree1.age = 3

        expect(@tree1.age).to eq(3)
    end

    it "can't set height attribute" do
        expect{@tree1.height = 20}.to raise_error(NoMethodError)
        expect{@tree2.height = 20}.to raise_error(NoMethodError)
    end

    it "can't set apple_count attribute" do
        expect{@tree1.apple_count = 20}.to raise_error(NoMethodError)
        expect{@tree2.apple_count = 20}.to raise_error(NoMethodError)
    end

    it 'has a method year_gone_by to increase Apple_Tree attributes' do
        expect(@tree1.year_gone_by).to eq("1, 11.0, 0")
        expect(@tree2.year_gone_by).to eq("1, 11.0, 0")
    end

    it "can't grow apples for the first three years of its life" do
        @tree1.year_gone_by
        expect(@tree1.apple_count).to eq(0)
    end

    it "can't grow apples after age 10" do
        @tree1.age = 11
        expect(@tree1.year_gone_by).to eq("12, 11.0, 0")
    end

    it 'has a method pick_apples to take all apples off tree' do
        # initialized apple_count to 10 to make this test work
        expect(@tree1.pick_apples).to eq(0)
        expect(@tree2.pick_apples).to eq(0)
    end
end