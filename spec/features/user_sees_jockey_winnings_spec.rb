require_relative "../spec_helper.rb"

describe "when a users visits a jockey page" do
  it "sees jockey information" do
    j = Jockey.create(name: "Sammy")
    j.horses.create(name: "Carrot", age: 34, total_winnings: 98)
    jockey = "/jockeys/#{j.id}"
    visit jockey

    expect(page).to have_content("98")
  end
end
