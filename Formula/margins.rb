class Margins < Formula
  desc "Vault-native meeting capture and transcript workflow CLI"
  homepage "https://github.com/useenzyme/margins"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/useenzyme/margins/releases/download/v0.1.0/margins-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "dccb8c86f18f6559200f9f18fde82d313c33d2595efaedd8c6271623b576a861"
  else
    url "https://github.com/useenzyme/margins/releases/download/v0.1.0/margins-0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "6ade20c3452a43e56e96965a258b15eec984a198ed1a833d4575a2881157b606"
  end

  depends_on :macos

  def install
    bin.install "margins"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/margins --help", 2)
  end
end
