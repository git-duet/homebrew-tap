class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.5.0"
  if OS.mac?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.0/darwin_amd64.tar.gz"
    sha256 "adc9fe97c99e92fdb160ad29413ec437e125d454590f41be1b91924a4c9efb09"
  elsif OS.linux?
    url "https://github.com/git-duet/git-duet/releases/download/0.5.0/linux_amd64.tar.gz"
    sha256 "e4f767b4c41772641b9178ed3f1d45f6f5f1d3b9b8509fe7016f5376aa181474"
  end

  depends_on :arch => :x86_64

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-pre-commit git-solo].each do |exe|
      bin.install exe
    end
  end

  test do
    system "git", "duet", "-h"
  end
end
