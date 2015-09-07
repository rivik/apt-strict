require "formula"

class AptStrict < Formula
  homepage "https://github.com/selivan/apt-strict"
  url "git@github.com:rivik/apt-strict.git", :using => :git
  version "0.5-4"

  depends_on "ansible"

  def install
        (share/'apt_strict').install 'apt_strict.py' 
        (share/'apt_strict').install 'executable.py' 
        (etc/'bash_completion.d').install 'bash_completion.d/apt-strict'
        bin.install_symlink (share/'apt_strict/executable.py') => 'apt-strict'
        mkdir (share/'ansible/packaging')
        (share/'ansible/packaging').install_symlink (share/'apt_strict/apt_strict.py') => 'apt_strict'
  end
end
