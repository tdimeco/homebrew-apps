cask "quicksound" do
  version "1.9"
  sha256 "4a3a61bac7da3021e9dc11c48dabfd95a329cfd2f47dabaf953773625f9eef5e"

  url "https://github.com/tdimeco/quicksound/releases/download/#{version}/quicksound-#{version}.zip"
  name "QuickSound"
  desc "Quickly play sounds from the macOS status bar"
  homepage "https://github.com/tdimeco/quicksound"

  depends_on macos: :sonoma

  app "QuickSound.app"

  zap trash: [
    "~/Library/Application Support/QuickSound",
    "~/Library/Preferences/fr.tdimeco.quicksound.plist",
    "~/Library/Caches/fr.tdimeco.quicksound",
    "~/Library/HTTPStorages/fr.tdimeco.quicksound",
  ]
end
