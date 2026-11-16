cask "duckpad" do
  version "0.18.3"
  sha256 "a55c51d6449e230a19a66763fec8611ea5af06e091dedf34d10d1ef770562ac8"

  url "https://github.com/namJeongwan/duckpad/releases/download/v#{version}/Duckpad-#{version}-universal.zip"
  name "Duckpad"
  desc "Text and code editor inspired by Notepad++"
  homepage "https://github.com/namJeongwan/duckpad"

  auto_updates true
  depends_on macos: :ventura

  app "Duckpad.app"

  caveats <<~EOS
    Duckpad is ad-hoc signed and is not notarized by Apple.
    macOS may block the first launch. After attempting to open Duckpad,
    allow it in System Settings > Privacy & Security > Open Anyway.
  EOS
end
