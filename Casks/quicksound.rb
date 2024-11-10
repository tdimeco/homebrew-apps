cask "quicksound" do
  version "1.7"
  sha256 "bc45aa04c0aedd6af3ae2e99c62666907bfb66270c14785fd987b601b078930d"

  url "https://github.com/tdimeco/quicksound/releases/download/#{version}/quicksound-#{version}.zip"
  name "QuickSound"
  desc "Quickly play sounds from the macOS status bar"
  homepage "https://github.com/tdimeco/quicksound"

  depends_on macos: ">= :big_sur"

  app "QuickSound.app"

  zap trash: [
    "~/Library/Application Support/QuickSound",
    "~/Library/Preferences/fr.tdimeco.quicksound.plist",
    "~/Library/Caches/fr.tdimeco.quicksound",
    "~/Library/HTTPStorages/fr.tdimeco.quicksound",
  ]
end
