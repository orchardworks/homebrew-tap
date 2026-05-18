cask "orchard-ops" do
  version "1.0.1"
  sha256 "da7b2d80b0ac12f024aa30b57363f44edca023825e6d9e467c1ad13e2cdf8c7c"

  url "https://github.com/orchardworks/orchard-ops.com/releases/download/v#{version}/OrchardOps.dmg"
  name "Orchard Ops"
  desc "Schedule scripts and commands on your Mac with a visual timeline"
  homepage "https://orchard-ops.com/"

  livecheck do
    url "https://orchard-ops.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Orchard Ops.app"

  zap trash: [
    "~/Library/Application Support/OrchardOps",
    "~/Library/Preferences/com.orchard-ops.OrchardOps.plist",
  ]
end
