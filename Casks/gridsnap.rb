cask "gridsnap" do
  version "0.1.3"
  sha256 "48a2ab43b57721b3b918d653a39d6b2f064697215a96a818a99285369ef2f055"

  url "https://github.com/konieczkow/gridsnap/releases/download/v#{version}/GridSnap-#{version}.zip"
  name "GridSnap"
  desc "Grid-based window snapper, an open source alternative to Divvy"
  homepage "https://github.com/konieczkow/gridsnap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "GridSnap.app"

  zap trash: "~/Library/Preferences/com.zerodivisionerror.gridsnap.plist"
end
