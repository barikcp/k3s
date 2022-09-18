# Execute these command in master-node
wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s    # Download the binary
chmod +x k3s                                                               # Give Execute permission
sudo ./k3s server                                                          # Cluster creation inside Master Node
sudo ./k3s kubectl get nodes -o wide                                       # Get how many nodes created
cat /var/lib/rancher/k3s/server/token                                      # Use this token for connecting Worker-Node to MasterNode
