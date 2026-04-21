class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.6.0/workit-darwin-arm64"
      sha256 "ff37bd4c4703d7ee207b55c06948e25f3846230e57afe9a3165672c8ab9908eb"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.6.0/workit-darwin-x64"
      sha256 "425a9fe902441f08e315627d02c3253a46047d50e1e036d31732e97f96e748b4"
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
