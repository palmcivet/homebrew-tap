cask "arkeys" do
  version "0.1.1"
  sha256 "284b23c4b495665064fb4c893ab750e73ab12f39e9a2d1d06f08e8a69b90c549"

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
