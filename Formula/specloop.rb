class Specloop < Formula
  include Language::Python::Virtualenv

  desc "Keep a spec, the code, and the tests in lockstep with your coding agent"
  homepage "https://github.com/KVTaniguchi/specloop"
  url "https://github.com/KVTaniguchi/specloop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e5f7491f61226b790e3feff523a0bfa50dd0e9bc169674f9a0366b7380114bee"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "specloop #{version}", shell_output("#{bin}/specloop --version")
  end
end
