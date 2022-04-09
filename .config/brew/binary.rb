# @binaryBrew [Mblabs](https://github.com/megabyte-labs/mblabs) - A CLI that provides various miscellaneous functions used in the Megabyte Labs ecosystem
class Mblabs < Formula
  desc "A CLI that provides various miscellaneous functions used in the Megabyte Labs ecosystem"
  homepage "https://megabyte.space"
  url "https://github.com/megabyte-labs/mblabs/releases/download/v1.0.26/mblabs.tar.gz"
  version "1.0.26"
  license "MIT"

  

  def install
    os = OS.kernel_name.downcase
    arch = Hardware::CPU.intel? ? "amd64" : Hardware::CPU.arch.to_s
    bin.install "build/bin/mblabs-#{os}_#{arch}" => "mblabs"
  done

  test do
    system bin/"mblabs", "--version"
  end
end
