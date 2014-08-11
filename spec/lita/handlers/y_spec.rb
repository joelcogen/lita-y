require "spec_helper"

describe Lita::Handlers::Y, lita_handler: true do
  it { routes_command("y?").to(:y?) }

  describe "y?" do
    it "responds with USERNAME pls" do
      send_command("y?")
      expect(replies.last).to eq("#{user.name} pls")
    end
  end
end
