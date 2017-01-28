require_relative '../spec_helper.rb'

describe "when a user creates a horse" do
  it "they see a form" do
    j = Jockey.create(name: "Garfield")
    new_horse = "/jockeys/#{j.id}/horses/new"
    puts new_horse
    visit(new_horse)
    fill_in("horse[name]", with: "Sunshine")
    fill_in("horse[age]", with: 22)
    fill_in("horse[total_winnings]", with: 5000)
    click_on("Submit")

    within('#horsey') do
      expect(page).to have_content("Sunshine")
    end
  end
end
