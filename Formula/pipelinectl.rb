class Pipelinectl < Formula
  desc "CLI wrapper to trigger and tail Azure DevOps pipelines"
  homepage "https://github.com/Borrelworst/pipelinectl"
  license "MIT"
  version "0.4.1"

  url "https://github.com/Borrelworst/pipelinectl/releases/download/v0.4.1/pipelinectl-v0.4.1-macos-arm64.tar.gz"
  sha256 "9dfbbd4a64043fe16a43d1b52b6a1e73ce68933346a28f5810aa87e853c16c9a"

  def install
    bin.install "pipelinectl"
  end

  test do
    assert_match "pipelinectl", shell_output("#{bin}/pipelinectl --help")
  end
end
