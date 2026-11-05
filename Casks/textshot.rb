cask "textshot" do
  version "0.4.0"
  sha256 "908a17c6b24b73dc8e4ea7022a9be6609e209e1d9ceeeeece357d5fd64bbceef"

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
