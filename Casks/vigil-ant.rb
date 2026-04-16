cask "vigil-ant" do
  version "0.0.8"
  sha256 "96de0e0f291d645a75d61e1c30e8a020be967b8a3aea530ec9e1a0d9f960f2d3"

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
