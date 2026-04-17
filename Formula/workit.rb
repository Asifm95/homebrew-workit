class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.1/workit-darwin-arm64"
      sha256 "03ba9b8b66c7462db3211e905ed45e211d1b888b97707284fca73ab271e1ad04"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.1/workit-darwin-x64"
      sha256 "745a0e7734c309011ee1bbf601a3db9e2b5bb9831e3a0e2eab324cc08a37ffb2"
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
