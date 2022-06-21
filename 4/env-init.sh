while ! kubectl get nodes | grep -w "Ready"; do
  echo "waiting for K8s init";
  sleep 1;
done

kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080

echo done >> /opt/katacoda-completed
