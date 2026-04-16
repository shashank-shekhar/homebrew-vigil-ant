cask "vigil-ant" do
  version "0.0.7"
  sha256 "87f41e5e68c26de2175df4b39a5acbeed50ad293cdb3fc0368445a235ccc84dc"

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
