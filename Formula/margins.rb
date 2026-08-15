class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.4.2/margins-0.4.2-aarch64-apple-darwin.tar.gz"
  sha256 "60a6cda67afbe98e3d9242dd93055dcefd6ed3836dc0016c12e17c87a395d087"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
