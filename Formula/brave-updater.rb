class BraveUpdater < Formula
  include Language::Python::Virtualenv

  desc "Unofficial CLI to download and update Brave Browser from Brave-controlled release sources"
  homepage "https://github.com/HackEAC/braver-tz"
  version "1.1.0"
  url "https://github.com/HackEAC/braver-tz/releases/download/v1.1.0/brave_updater-1.1.0.tar.gz"
  sha256 "2e59280f2cf189481ae180c3b2a6b74960b3ab5c3fc4c1c0a79a572173044e3e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/brave-updater --help")
    assert_match "update", output
  end
end
