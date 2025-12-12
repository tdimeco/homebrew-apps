cask "highlight" do
  version "1.6.0"
  sha256 "bc4ce73c29a01e5380a6f4fc40718747a6b4b7926000360e08cfad267da45e99"

  url "https://github.com/tdimeco/highlight/releases/download/v#{version}/highlight-#{version}.zip"
  name "Highlight"
  desc "Rich featured syntax highlighter for Keynote slides"
  homepage "https://github.com/tdimeco/highlight"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Highlight.app"

  zap trash: [
    "~/Library/Preferences/kim.taegon.Highlight.plist",
    "~/Library/Caches/kim.taegon.Highlight",
    "~/Library/HTTPStorages/kim.taegon.Highlight",
  ]
end
