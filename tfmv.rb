# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmv < Formula
  desc "Rename Terraform resources and modules and generate moved blocks. You can rename blocks flexibly using Jsonnet.
"
  homepage "https://github.com/suzuki-shunsuke/tfmv"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.3/tfmv_darwin_amd64.tar.gz"
      sha256 "fb27b93e2a542fc282595318196fc80d462ba56d3932b5bd265e95c30ded3721"

      def install
        bin.install "tfmv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.3/tfmv_darwin_arm64.tar.gz"
      sha256 "c96278aad5d72955f25464401c23d92587af6e2b5a30683f50e8745b96297871"

      def install
        bin.install "tfmv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.3/tfmv_linux_amd64.tar.gz"
        sha256 "9d7b81aeae658d84e3cb3326dc91ece65a1437677a367af11833e658a2c15337"

        def install
          bin.install "tfmv"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfmv/releases/download/v0.1.3/tfmv_linux_arm64.tar.gz"
        sha256 "c9ea26ee89ee20bb2f1e401218a4b93d7fbfc965e135b20793b24d620ba66424"

        def install
          bin.install "tfmv"
        end
      end
    end
  end

  test do
    system "#{bin}/tfmv --version"
  end
end
