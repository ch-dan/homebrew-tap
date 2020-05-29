# This file was generated by GoReleaser. DO NOT EDIT.
class YodaTool < Formula
  desc ""
  homepage ""
  version "1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ch-dan/yoda/releases/download/v1.0.3/yoda_1.0.3_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "04088555ad2ec5d31b73de312ec5e997a910e52bc73d31b040c96a1960f36695"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ch-dan/yoda/releases/download/v1.0.3/yoda_1.0.3_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5a5070b371464bea2a5a08ab1fd0e1f6004b199c25832b043f6a63333665d8bb"
    end
  end

  def install
    bin.install "yoda"
  end
end
