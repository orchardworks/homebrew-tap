cask "orchard-ops" do
  version "v0.3.5"
  sha256 "3919791083864e384f45de25b56918e0aa3a897de6f7a93db8cc6202069cd697"

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
