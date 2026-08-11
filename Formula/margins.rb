class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/useenzyme/margins"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/useenzyme/margins/releases/download/v0.3.0/margins-0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "2a80d0f66426c040edb6714fe2d85ba46003f7a17e01db4fd973ec3434d01cde"
  else
    url "https://github.com/useenzyme/margins/releases/download/v0.3.0/margins-0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "3063d8046a5b519f3c9856f9155c75b4a982aeab74d34bb889f4e4e2aea10561"
  end

  depends_on :macos

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
