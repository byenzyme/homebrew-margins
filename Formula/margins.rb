class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/useenzyme/margins"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/useenzyme/margins/releases/download/v0.3.0/margins-0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "46f217eb4324d3750446005a2e4ecec97385fae3cc175049188b6c64753d9108"
  else
    url "https://github.com/useenzyme/margins/releases/download/v0.3.0/margins-0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "cb7e06d4c8f2915bbb4b5f0fb45a18b273ba744dd707ee00467803a80bd25058"
  end

  depends_on :macos

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help 2>&1", 2)
  end
end
