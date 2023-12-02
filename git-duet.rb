class GitDuet < Formula
  desc "Pairing tool for Git"
  homepage "https://github.com/git-duet/git-duet"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/git-duet/git-duet/releases/download/0.10.0/darwin_amd64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    elsif Hardware::CPU.arm?
      url "https://github.com/git-duet/git-duet/releases/download/0.10.0/darwin_arm64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/git-duet/git-duet/releases/download/0.10.0/linux_amd64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
