cask "duckpad" do
  version "0.18.2"
  sha256 "03623f5e96481d1e32290b3328779fa0d600d6df136c9e4c8f0377969cef00ef"

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
