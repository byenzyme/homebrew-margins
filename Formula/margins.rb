class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/byenzyme/margins"
  license "Apache-2.0"

  url "https://github.com/byenzyme/margins/releases/download/v0.3.1/margins-0.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "9350e82ee2ec39c083e2063df8b65a8c5e7b8cf316e4f1840d6ea4e0f983e0c7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
