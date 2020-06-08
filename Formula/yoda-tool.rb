# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.14/yoda_1.0.14_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "df627077951a7070d35772afa385a25645c210382b4c675351b590c4c82da8a3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.14/yoda_1.0.14_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "16078a8891f5fa4a30e7a0484911511b697e0a5d35100916827692a341091042"
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
