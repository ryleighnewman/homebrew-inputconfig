cask "inputconfig" do
  version "1.7"
  sha256 "f2280de9696f89297443a3d89614a0f50c1b8739c29c771db60af2d4e8ff6935"

  url "https://github.com/ryleighnewman/homebrew-inputconfig/releases/download/v#{version}-33/InputConfig-#{version}.zip"
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
