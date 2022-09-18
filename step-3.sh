# Execute these command in worker-node-2
wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s                # Download the binary
chmod +x k3s                                                                           # Give Execute permission
sudo ./k3s agent --server https://k3s-master-node:6443 --token ${NODE_TOKEN}           # Replace the NODE_TOKEN name, with the output of command fired in Master Node:  cat /var/lib/rancher/k3s/server/token
