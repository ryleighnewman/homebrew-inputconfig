cask "inputconfig" do
  version "1.8"
  sha256 "6d52f6ae7f78930211869dbec3de8cb3b6272b710c01d7c7e83e860274ea3237"

  url "https://github.com/ryleighnewman/homebrew-inputconfig/releases/download/v#{version}-34/InputConfig-#{version}.zip"
  name "InputConfig"
  desc "Controller mapper: map gamepad buttons and sticks to keys and the mouse"
  homepage "https://inputconfig.com"

  depends_on macos: :sonoma

  app "InputConfig.app"

  caveats <<~EOS
    On first launch, allow InputConfig in System Settings > Privacy & Security >
    Accessibility so it can send keys and move the pointer.

    If the Mac App Store copy is already in /Applications, quit and remove it first;
    both copies share the same presets.
  EOS

  zap trash: [
    "~/Library/Application Scripts/com.inputconfig.app",
    "~/Library/Containers/com.inputconfig.app",
  ]
end
