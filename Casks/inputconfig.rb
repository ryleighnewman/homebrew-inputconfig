cask "inputconfig" do
  version "1.5"
  sha256 "9b2c9372087e08deec49390072c0a11c435f04f012555f9f0b85aa790b9b0f59"

  url "https://github.com/ryleighnewman/homebrew-inputconfig/releases/download/v#{version}-29/InputConfig-#{version}.zip"
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
