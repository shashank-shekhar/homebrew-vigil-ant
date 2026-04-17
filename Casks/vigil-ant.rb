cask "vigil-ant" do
  version "0.0.10"
  sha256 "4baa9d61015fc8dadf8104f7c0a9f502360b3c58b808328c0c8e7c337a3afb81"

  url "https://github.com/shashank-shekhar/vigil-ant/releases/download/v#{version}/Vigil-ant-#{version}.dmg"
  name "Vigil-ant"
  desc "Monitor GitHub CI/CD build status from your menu bar"
  homepage "https://github.com/shashank-shekhar/vigil-ant"

  depends_on macos: ">= :sonoma"

  app "Vigilant.app"

  zap trash: [
    "~/Library/Preferences/net.shashankshekhar.vigilant.plist",
  ]
end
