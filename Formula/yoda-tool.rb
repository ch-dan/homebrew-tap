# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.6/yoda_1.0.6_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f868e4bf208f272b7896f3218d4a9f108aef46e2fa78009e89b1b5c5f04f9db8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.6/yoda_1.0.6_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4d1aff9f8931e6b05e17928b335d08ae695452968cfe3943d699255b590c4ab9"
    end
  end

  def install
    bin.install "yoda"
  end
end