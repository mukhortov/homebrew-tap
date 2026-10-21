cask "write" do
  version "0.7.2"
  sha256 "534c73fbb27b95b28ed9e7d16aacb9ce1d45cf437979c42128d271f3aa894c8c"

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
