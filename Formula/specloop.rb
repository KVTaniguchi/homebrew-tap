class Specloop < Formula
  include Language::Python::Virtualenv

  desc "Keep an iOS app's spec, code and tests in lockstep with your coding agent"
  homepage "https://github.com/KVTaniguchi/specloop"
  url "https://github.com/KVTaniguchi/specloop/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "f24ba3420feda69b9e317bc1787f6e8e4afe7a0522460fab6b11e0e7daacbb93"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "specloop #{version}", shell_output("#{bin}/specloop --version")
  end
end
