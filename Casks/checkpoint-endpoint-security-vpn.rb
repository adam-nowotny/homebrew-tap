cask "checkpoint-endpoint-security-vpn" do
  version "E89.10"
  sha256 "e3b0faeeb84d8df7108313f2d4bb400f45748fec8dbcdee8e490c7f951fc23b5"

  url "https://dl3.checkpoint.com/paid/06/0688f4c7999b46465364031c1017accc/Endpoint_Security_VPN.pkg?HashKey=1745937859_77c167666484576baa900592cb119917&xtn=.pkg"
  name "Checkpoint Endpoint Security VPN"
  desc "VPN Checkpoint Endpoint Security VPN"
  homepage "https://support.checkpoint.com/results/download/136510"

  pkg "Endpoint_Security_VPN.pkg"

  uninstall script: {
    executable: "/Library/Application Support/Checkpoint/Endpoint Connect/uninstall",
    args: ["--uninstall"],
    sudo: true
  }
end
