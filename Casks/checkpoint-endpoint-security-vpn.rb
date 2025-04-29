cask "checkpoint-endpoint-security-vpn" do
  version "E89.10"
  sha256 "f9312dfe6af66acd73cc639eb7e4bd06ce0953fa8d63bb6dae2c5de21a60d280"

  url "https://dl3.checkpoint.com/paid/06/0688f4c7999b46465364031c1017accc/Endpoint_Security_VPN.pkg?HashKey=1745937859_77c167666484576baa900592cb119917&xtn=.pkg"
  name "Checkpoint Endpoint Security VPN"
  desc "VPN Checkpoint Endpoint Security VPN"
  homepage "https://support.checkpoint.com/results/download/136624"

  pkg "Endpoint_Security_VPN.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Checkpoint/Endpoint Connect/uninstall",
    args: ["--uninstall"],
    sudo: true
  }
end
