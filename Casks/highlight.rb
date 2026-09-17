cask "highlight" do
  version "1.6.1"
  sha256 "7cfa726e7eef3fbdce21b5110b79dddfe702bc5459eeefb54a7df9910d75600f"

  url "https://github.com/tdimeco/highlight/releases/download/v#{version}/highlight-#{version}.zip"
  name "Highlight"
  desc "Rich featured syntax highlighter for Keynote slides"
  homepage "https://github.com/tdimeco/highlight"

  auto_updates true
  depends_on macos: :sonoma

  app "Highlight.app"

  zap trash: [
    "~/Library/Preferences/kim.taegon.Highlight.plist",
    "~/Library/Caches/kim.taegon.Highlight",
    "~/Library/HTTPStorages/kim.taegon.Highlight",
  ]
end
