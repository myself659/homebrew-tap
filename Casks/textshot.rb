cask "textshot" do
  version "0.5.1"
  sha256 "301c786d377e328a18c74a7cdf684b22e3b9200ba1b9a2e01b57d1a0d09b8275"

  url "https://github.com/myself659/TextShot/releases/download/v#{version}/TextShot-#{version}-macos-universal.zip"
  name "TextShot"
  desc "Lightweight, pure native menu bar OCR utility"
  homepage "https://github.com/myself659/TextShot"

  depends_on macos: :sonoma

  app "TextShot.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/TextShot.app"]
  end

  zap trash: [
    "~/Library/Preferences/local.TextShot.dev.plist",
    "~/Library/Preferences/local.TextShot.plist",
  ]
end
