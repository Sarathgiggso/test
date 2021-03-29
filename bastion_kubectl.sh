KUBECTL_VERSION=1.17.6

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client

sudo mkdir ~/.kube

sudo scp $1:~/ggazure-int/ansible/inventory/artifacts/admin.conf ~/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
