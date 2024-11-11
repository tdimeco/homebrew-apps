cask "highlight" do
  version "1.5.0"
  sha256 "94b5fae74affb57503d28c790d6a24b6eec862b855876d64a96d4888d1caa275"

  url "https://github.com/tdimeco/highlight/releases/download/v#{version}/highlight-#{version}.zip"
  name "Highlight"
  desc "Rich featured syntax highlighter for Keynote slides"
  homepage "https://github.com/tdimeco/highlight"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Highlight.app"

  zap trash: [
    "~/Library/Preferences/kim.taegon.Highlight.plist",
    "~/Library/Caches/kim.taegon.Highlight",
    "~/Library/HTTPStorages/kim.taegon.Highlight",
  ]
end
