cask "orchard-ops" do
  version "0.3.3"
  sha256 "faa10c22dec3746351528be82ab24437c83926adb3e4891200123e891ca08d96"

  url "https://github.com/orchardworks/orchard-ops-site/releases/download/v#{version}/OrchardOps.dmg"
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
