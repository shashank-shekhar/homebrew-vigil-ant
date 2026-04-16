cask "vigil-ant" do
  version "0.0.2"
  sha256 "df54405f941d0b2b672d90a7343cc256817da34622d7988f94a588d2ecfe3d62"

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
