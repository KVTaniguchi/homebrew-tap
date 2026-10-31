class Specloop < Formula
  include Language::Python::Virtualenv

  desc "Keep an iOS app's spec, code and tests in lockstep with your coding agent"
  homepage "https://github.com/KVTaniguchi/specloop"
  url "https://github.com/KVTaniguchi/specloop/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "e41aa997695bc30279db027ecd9dd7206e3b14fbaea3d464a8abe181e2bc6a7b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "specloop #{version}", shell_output("#{bin}/specloop --version")
  end
end
