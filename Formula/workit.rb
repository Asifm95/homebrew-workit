class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.5/workit-darwin-arm64"
      sha256 "f589d71eb76cf0c6799fcc1c0753e3d1f0a332d9f1e5a707e9d30de97f41c320"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.5/workit-darwin-x64"
      sha256 "edb326106e23d607f72d1d4fe0f6b26aaf81c7af0336ee31347cc25c8f6331f1"
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
