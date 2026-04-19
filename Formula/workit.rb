class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.5.0/workit-darwin-arm64"
      sha256 "a562dbd5a956ae213d49a99288a9df23c2c5e4ec078fd4c39dc2bc399f1c98c1"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.5.0/workit-darwin-x64"
      sha256 "0d9edf96a33ce552265414aee20723449cb1c5f207720cc9e637ca08ec18b0ee"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "workit-darwin-arm64" : "workit-darwin-x64"
    bin.install binary_name => "workit"
  end

  test do
    assert_match "workit", shell_output("#{bin}/workit --help")
  end
end
