class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.8.0/workit-darwin-arm64"
      sha256 "16686af81cb9f7e8a2a1e4c1470cbcba2c999e34361d2b60868588e6deb64aeb"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.8.0/workit-darwin-x64"
      sha256 "2094f368bc7a28936aea87792975e048bf29cb20cf45b9ed1a2a33be3a699d17"
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
