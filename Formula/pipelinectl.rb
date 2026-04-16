class Pipelinectl < Formula
  desc "CLI wrapper to trigger and tail Azure DevOps pipelines"
  homepage "https://github.com/Borrelworst/pipelinectl"
  license "MIT"
  version "0.4.0"

  url "https://github.com/Borrelworst/pipelinectl/releases/download/v0.4.0/pipelinectl-v0.4.0-macos-arm64.tar.gz"
  sha256 "ca9a42404b9e58081487f594cf50e26b85426d798a21e0fbc391c6be6c084108"

  def install
    bin.install "pipelinectl"
  end

  test do
    assert_match "pipelinectl", shell_output("#{bin}/pipelinectl --help")
  end
end
