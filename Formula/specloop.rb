class Specloop < Formula
  include Language::Python::Virtualenv

  desc "Keep a spec, the code, and the tests in lockstep with your coding agent"
  homepage "https://github.com/KVTaniguchi/specloop"
  url "https://github.com/KVTaniguchi/specloop/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c7a70847ed2ff9f95329920683e2aef3d7b8edd3797ac1854e71fb6fb9d521e6"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "specloop #{version}", shell_output("#{bin}/specloop --version")
  end
end
