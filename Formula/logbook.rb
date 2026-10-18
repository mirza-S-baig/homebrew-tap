
class Logbook < Formula
  desc "Lightweight, offline-first Todo CLI"
  homepage "https://github.com/mirza-S-baig/LogBook"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mirza-S-baig/LogBook/releases/download/v0.1.1/lg-aarch64-apple-darwin.tar.gz"
      sha256 "95a21d5a4b1b1f5bb9d03c7adb5b3c427f8cc12c1682fad106ae0a170d2f679d"
    else
      url "https://github.com/mirza-S-baig/LogBook/releases/download/v0.1.1/lg-x86_64-apple-darwin.tar.gz"
      sha256 "69365129ba7d7a52ca034bc84a03e7901f703824ff65f46bd1e002c59baf1e9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mirza-S-baig/LogBook/releases/download/v0.1.1/lg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d78ead5e3a8ad9db9d70831db16d89591a328d55a8491aa5240caa748d08d8f6"
    else
      url "https://github.com/mirza-S-baig/LogBook/releases/download/v0.1.1/lg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "418d55c5ec6a172f1f5cec5d832b5a350cd2d27295a9b3bb767fca46e9a2b5f4"
    end
  end

  def install
    bin.install "lg"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/lg --help")
  end
end
