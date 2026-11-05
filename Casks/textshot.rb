cask "textshot" do
  version "0.1.0"
  sha256 "58c71930546b95897d5a040081a9d82debc32d7d8b4d3428db1e3ea3fec39391"

  url "https://github.com/myself659/TextShot/releases/download/v#{version}/TextShot-#{version}-macos-universal.zip"
  name "TextShot"
  desc "Lightweight, pure native macOS menu bar OCR utility"
  homepage "https://github.com/myself659/TextShot"

  depends_on macos: ">= :sonoma"

  app "TextShot.app"

  zap trash: [
    "~/Library/Preferences/local.TextShot.plist",
    "~/Library/Preferences/local.TextShot.dev.plist",
  ]
end
