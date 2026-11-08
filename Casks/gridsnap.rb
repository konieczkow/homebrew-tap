cask "gridsnap" do
  version "0.1.8"
  sha256 "01ea8184ec2cae541de96542eeec7c4a8f492cbe7ce15e2300dfaca9402f279b"

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
