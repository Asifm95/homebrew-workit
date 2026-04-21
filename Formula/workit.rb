class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.7.0/workit-darwin-arm64"
      sha256 "f82738071b866e358ae2126b746c0ff6f598950679b95b5deae2a63557690629"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.7.0/workit-darwin-x64"
      sha256 "54c358d158366f066dc9ea029180f22dd221bbb87c5705492d67b5faf294a127"
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
