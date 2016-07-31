require "formula"

class AptStrict < Formula
  homepage "https://github.com/selivan/apt-strict"
  url "git@github.com:rivik/apt-strict.git", :using => :git
  version "0.5-11"

  depends_on "ansible" => :optional
  depends_on "ansible19" => :optional

  def install
        # no apt for max os x =), install ansible module only
        (share/'ansible/packaging').install 'apt_strict.py' => 'apt_strict'
  end
end
