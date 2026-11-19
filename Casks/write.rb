cask "write" do
  version "0.7.6"
  sha256 "4f2af9ed6ea5a8230fc2f4c419fe1676ad4dd441a091acc05fc04200824f92c6"

  url "https://github.com/mukhortov/write/releases/download/write-v#{version}/Write-#{version}.dmg"
  name "Write"
  desc "Dead-simple Markdown writing app, ported from Omawrite"
  homepage "https://github.com/mukhortov/write"

  livecheck do
    url :url
    regex(/^write[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Write.app"

  zap trash: [
        "~/Library/Application Support/mukhortov/write",
        "~/Library/Preferences/com.mukhortov.write.plist",
        "~/Library/Saved Application State/com.mukhortov.write.savedState",
      ],
      rmdir: "~/Library/Application Support/mukhortov"
end
