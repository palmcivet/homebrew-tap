cask "arkeys" do
  version "0.1.2"
  sha256 "998f5e0eb81e136e764b0208db33cba361671578ba4da78e1107b32aa04a7a94"

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
