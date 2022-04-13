cask "paperspace" do
  version "11.9.4.4899"
  sha256 "45aa6918aa820b94330f705d07d0a7ca7e2c95eb311d613783e207491a1068d6"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  livecheck do
    # curl -H 'Content-Type: application/json' \
    #   --data-binary \
    #   '{"component": "paperspaceInstaller", "os": "mac"}' \
    #   https://api.paperspace.io/receivers/latestVersion
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "Paperspace.app"

  zap trash: [
    "~/Library/Application Support/Paperspace",
    "~/Library/Caches/Paperspace",
    "~/Library/Preferences/com.paperspace.Paperspace.plist",
    "~/Library/Preferences/paperspace.Paperspace.plist",
    "~/Library/Saved Application State/paperspace.Paperspace.savedState",
  ]
end
