class GitDuet < Formula
  homepage 'https://github.com/git-duet/git-duet'
  url 'https://github.com/git-duet/git-duet/releases/download/0.3.0/darwin_amd64.tar.gz'
  sha256 '0669e056f0a8c3e7e8e96bf8a7a9861c256a84932bee6d103a68ad3398a2b2a5'
  version '0.3.0'

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
