class Workit < Formula
  desc "CLI workflow manager for multi-project git worktrees"
  homepage "https://github.com/Asifm95/workit"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.2/workit-darwin-arm64"
      sha256 "05d4c987639afc75aa12bfd8393dbc7c7adc0aca8c7ea4f70d432fe40d9a1ee4"
    end
    on_intel do
      url "https://github.com/Asifm95/workit/releases/download/v0.1.2/workit-darwin-x64"
      sha256 "191700ec5e5dd8d0bbcd2fd7dd5f6c660de4f6d20f667a1de10725def6ed2bed"
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
