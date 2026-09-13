cask "arkeys" do
  version "0.1.0"
  sha256 "4ec8627d22b01bab972c4a1cec78d53be6582bc80131cac8348438bb2883ee58"

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
