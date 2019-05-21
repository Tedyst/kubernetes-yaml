helm repo add rook-release https://charts.rook.io/release
helm install --namespace rook-ceph --name rook rook-release/rook-ceph --set agent.flexVolumeDirPath=/var/lib/kubelet/volumeplugins