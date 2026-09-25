cask "arkeys" do
  version "0.1.3"
  sha256 "398df93d6114a7bbf06670660f2393916688fb9bdd5419b59628aa7670292420"

  url "https://github.com/palmcivet/Arkeys/releases/download/v#{version}/Arkeys-#{version}.zip"
  name "Arkeys"
  desc "Map keyboard shortcuts to mouse clicks inside a target app"
  homepage "https://github.com/palmcivet/Arkeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Arkeys.app"

  uninstall quit: "palmcivet.arkeys"

  zap trash: [
    "~/Library/Application Support/Arkeys",
    "~/Library/Preferences/palmcivet.arkeys.plist",
  ]
end
