class GitDuet < Formula
  homepage 'https://github.com/git-duet/git-duet'
  url 'https://github.com/git-duet/git-duet/releases/download/0.3.1/darwin_amd64.tar.gz'
  sha256 'af2e048cda79606d3c90a89ae16a1f0d99866b43daabf01bda340f019a681617'
  version '0.3.1'

  depends_on :arch => :x86_64

  def install
    %w( git-duet git-duet-commit git-duet-revert git-duet-install-hook git-duet-pre-commit git-solo).each do |exe|
      bin.install exe
    end
  end

  test do
    system 'git duet -h'
  end
end
