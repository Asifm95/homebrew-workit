class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.3/workit-darwin-arm64"
      sha256 "582574998454154ef559f8ed6f4e14bcc597d9bcf2b4b4d39958dcfde45f2252"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.2.3/workit-darwin-x64"
      sha256 "e364f2a01531d7bd0f473d4dbf8b28b3586bf8f747ab5f495278d82981e1b9ea"
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
