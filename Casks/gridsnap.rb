cask "gridsnap" do
  version "0.1.4"
  sha256 "43d318bfdadd004a1b284fd86be9bd6185147b31f21de99b9f582c036a2be821"

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
