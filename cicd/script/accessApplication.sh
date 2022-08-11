kubectl port-forward --address 0.0.0.0 service/ingress-nginx-controller -n ingress-nginx 8080:80 &
kubectl port-forward --address 0.0.0.0 service/demoprometheus-server 3000:80 &
kubectl port-forward --address 0.0.0.0 service/demografana 9000:80 &

grafana=`kubectl get secret --namespace default demografana -o jsonpath="{.data.admin-password}"`
echo $grafana