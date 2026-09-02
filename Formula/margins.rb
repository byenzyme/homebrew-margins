class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.6/margins-0.4.6-aarch64-apple-darwin.tar.gz"
  sha256 "cb8efb65477e45c7a5294fa056ab1e60e6cb91563558629092b8a1de94d7a6be"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  def caveats
    <<~EOS
      Next step — finish setup (one time):
        margins setup   # downloads local models and installs the agent skills
                        # (/margins, /watermark) into Claude Code, Codex, and Cursor

      Then:
        margins new     # record a meeting
        margins note    # turn the latest meeting into a note in your agent

      To capture computer audio, grant your terminal "Screen & System Audio
      Recording" in System Settings > Privacy & Security, then restart it.
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
