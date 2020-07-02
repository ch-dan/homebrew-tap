# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.1.7/yoda_1.1.7_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "b9e9b31bf3e663485e3d1c16c40559df117f0f9de777c22f75da18c150e8074e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.1.7/yoda_1.1.7_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f5322f0a97957f5b226aac68bc99d8ab4116953ac6e78a8eb6d60c58a83ef603"
    end
  end

  def install
    bin.install "yoda"
  end

  def caveats; <<~EOS
    Requires multipass cask installed to function
  EOS
  end
end
