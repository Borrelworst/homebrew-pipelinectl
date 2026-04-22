class Pipelinectl < Formula
  desc "CLI wrapper to trigger and tail Azure DevOps pipelines"
  homepage "https://github.com/Borrelworst/pipelinectl"
  license "MIT"
  version "0.5.0"

  url "https://github.com/Borrelworst/pipelinectl/releases/download/v0.5.0/pipelinectl-v0.5.0-macos-arm64.tar.gz"
  sha256 "d5400bce07a94c719ce702e776ab81adfdcba816622fa69de571273fac86ae65"

  def install
    bin.install "pipelinectl"
  end

  test do
    assert_match "pipelinectl", shell_output("#{bin}/pipelinectl --help")
  end
end
