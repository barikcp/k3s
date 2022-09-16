K3s cluster creation:

Step-1: (Download the binary)
wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s

Step-2: (Give Execute permissison)
chmod +x k3s

Step-3: (install k3s cluster)
sudo ./k3s server

Step-4: (Display the Master node token)
cat /var/lib/rancher/k3s/server/node-token

Step-5: (Join the worker node to MasterNode)
sudo ./k3s agent -s https://10.160.0.4:6443 -t <Code_shown_in_step-4>
