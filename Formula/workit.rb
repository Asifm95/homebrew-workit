class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.0/workit-darwin-arm64"
      sha256 "31bdc252f07341e9a2470b367a4ee54cd51b8340c909623117ff307d8d8fb211"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.0/workit-darwin-x64"
      sha256 "608d659bb7ea3ed80b531b5b8e52927618903c537639bb939f01a2c65becf7fa"
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
