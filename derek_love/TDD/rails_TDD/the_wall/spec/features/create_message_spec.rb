require 'rails_helper'

feature "guest user creates an account" do
    before(:each) do
        visit new_user_path
        fill_in "user_username", with: "dlovely"
        click_button "Create"
    end

    scenario "successfully creates a new message" do
        fill_in "message_content", with: "I am a golden god"
        click_button "Post a Message"
        expect(page).to have_content "#{Message.last.content}"
        expect(current_path).to eq(messages_path) 
    end

    scenario "unsuccessfully creates a new message" do
        click_button "Post a Message"
        expect(current_path).to eq(messages_path)
    end

    scenario "doesn't fill out content field" do
        click_button "Post a Message"
        expect(page).to have_content "Content can't be blank"
    end
end