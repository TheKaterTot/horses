require_relative '../spec_helper.rb'

describe "when a user visits the horse index" do
  it "they see a list" do
    Horse.create(name: "jon", age: 30, total_winnings: 44)
    Horse.create(name: "sally", age: 8, total_winnings: 900)
    visit "/horses"

    expect(page).to have_content("jon")
    expect(page).to have_content("sally")
  end
end
