K3s cluster creation:

Step-1: (VM creation)

Create three VMs (named as MasterNode, WorkerNode-1, WorkerNode-2)

Step-2: Install K3S cluster in MasterNode.​

         Download the binary:   wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s     ​

         Give Execute permissison:  chmod +x k3s ​

         Install K3s cluster:   sudo ./k3s server​
         
         Display the Master node token : cat /var/lib/rancher/k3s/server/node-token​


Step-3: (Join the worker node-1 to MasterNode)

         sudo ./k3s agent -s https://10.160.0.4:6443 -t <Code_shown_in_above_step-2>​

(This command will be shown on the screen after K3s installed in above step-2)

Step-4: (Join the worker node-2 to MasterNode)

         sudo ./k3s agent -s https://10.160.0.4:6443 -t <Code_shown_in_above_step-2>​

(This command will be shown on the screen after K3s installed in above step-2)

Step-5: Verify the status of the Node

         sudo ./k3s kubectl get nodes -o wide​
