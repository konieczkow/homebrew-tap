cask "gridsnap" do
  version "0.1.15"
  sha256 "f2342d6ddf3b5013f2864c1875d5e2b4bc37495a0c3efbf9178b5c7e253f99eb"

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
