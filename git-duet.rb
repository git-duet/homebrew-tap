class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/git-duet/git-duet/releases/download/0.9.0/darwin_arm64.tar.gz"
      sha256 "3e6b20dd909a0b47763f6659828ad5b3860dcf8995ff12d221d911b8ecdd51c3"
    elsif Hardware::CPU.arm?
      url "https://github.com/git-duet/git-duet/releases/download/0.9.0/darwin_amd64.tar.gz"
      sha256 "7e72fb8425f49cf436ab3808273cb1013719ae39a66169adf0a1c2c8aa4a72fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/git-duet/git-duet/releases/download/0.9.0/linux_amd64.tar.gz"
      sha256 "216d8b3f4d72660bd01f7b66e07be515befa377e7a783c74c8dfa76d94d61e22"
    end
  end

  def install
    %w[git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-merge git-duet-pre-commit git-duet-post-commit git-duet-prepare-commit-msg git-solo git-as].each do |exe|
      bin.install exe
    end
  end

  test do
    assert_match /#{version.to_s}/, `git duet -v`.chomp
  end
end
