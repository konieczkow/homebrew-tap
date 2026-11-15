cask "gridsnap" do
  version "0.1.14"
  sha256 "99c4ae57724116eb665687ec2ff60b95c38352f8ad1f4c79d52aa9ed1c8dde37"

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
