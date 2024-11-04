
#!/bin/bash
  
#Setting up kubeadm cluster  
  
sudo kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get --raw='/readyz?verbos'

#Installing CNI Calico Pulgin  
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.0/manifests/calico.yaml
kubectl get nodes

# Installing helm charts
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 775 get_helm.sh
sudo bash get_helm.sh 
helm version --short

# bash completion 
kubectl completion bash >> ~/.bashrc
source ~/.bashrc