class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.4/workit-darwin-arm64"
      sha256 "e815d64957a9ed952fee977bb1200f99357085becf4d426990bd925a0c287c64"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.4/workit-darwin-x64"
      sha256 "17a951ffe2b25f11d639b37ce884381a148cd6e7bac4bb43bd93e7aed0056897"
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
