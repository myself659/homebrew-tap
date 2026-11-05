cask "textshot" do
  version "0.2.0"
  sha256 "2c317ebe6e764bd53da1407a346e6ec34883bc96860f356f50b53bc26d70351f"

  url "https://github.com/myself659/TextShot/releases/download/v#{version}/TextShot-#{version}-macos-universal.zip"
  name "TextShot"
  desc "Lightweight, pure native macOS menu bar OCR utility"
  homepage "https://github.com/myself659/TextShot"

  depends_on macos: :sonoma

  app "TextShot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TextShot.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/local.TextShot.plist",
    "~/Library/Preferences/local.TextShot.dev.plist",
  ]
end
