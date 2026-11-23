# Homebrew cask for Perch. The release workflow fills in VERSION and SHA256
# and pushes the result to github.com/DmanOnline/homebrew-perch.
cask "perch" do
  version "0.2.0"
  sha256 "c763f72ad6da674c3a63a1cbb35963e39c65ecb27fb640f679effeab950d20ea"

  url "https://github.com/DmanOnline/perch/releases/download/v#{version}/Perch-#{version}.dmg"
  name "Perch"
  desc "Dynamic Island for the notch"
  homepage "https://github.com/DmanOnline/perch"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Perch updates itself with Sparkle.
  auto_updates true
  depends_on macos: :sequoia

  app "Perch.app"

  uninstall quit: "com.itcompleet.perch"

  zap trash: [
    "~/Library/Application Support/com.itcompleet.perch",
    "~/Library/Caches/com.itcompleet.perch",
    "~/Library/HTTPStorages/com.itcompleet.perch",
    "~/Library/Preferences/com.itcompleet.perch.plist",
  ]

  caveats <<~EOS
    Perch is signed but not notarized by Apple. The first time, macOS may
    refuse to open it: open System Settings > Privacy & Security and click
    "Open Anyway" next to Perch. After that it opens normally and updates
    itself.
  EOS
end
