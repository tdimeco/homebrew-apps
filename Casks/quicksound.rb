cask "quicksound" do
  version "1.8"
  sha256 "9b80b6bf3c08fd1e73b06ecadc73cbcc4d9c2f769e302077f9a454b7f8ceb5aa"

  url "https://github.com/tdimeco/quicksound/releases/download/#{version}/quicksound-#{version}.zip"
  name "QuickSound"
  desc "Quickly play sounds from the macOS status bar"
  homepage "https://github.com/tdimeco/quicksound"

  depends_on macos: ">= :monterey"

  app "QuickSound.app"

  zap trash: [
    "~/Library/Application Support/QuickSound",
    "~/Library/Preferences/fr.tdimeco.quicksound.plist",
    "~/Library/Caches/fr.tdimeco.quicksound",
    "~/Library/HTTPStorages/fr.tdimeco.quicksound",
  ]
end
