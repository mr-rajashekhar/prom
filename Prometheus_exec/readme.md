#This is a docker based installation
Execute pro.sh (./pro.sh)
Check if the pod is created (kubectl get pods)
Once the pod is created enter into the pod
(kubectl exec -it $(pod_name) -- sh)
Now go to /etc/prometheus/prometheus.yaml 
Under scrape_config add you job name
Ex: - job_name: "pi3b-2"
      static_configs:
       - targets: ["10.250.61.29:9100"]
In VI editor , to edit use esc+insert
             , to save use esc and ZZ(shift+Z twice)
Now enter into minikube using minikube ssh
run docker ps
and check the container id of prometheus
and restart the container using docker restart $(container id)
port forward the pod using kubectl port-forward $(pod_name) 9090
open localhost:9090 in your browser and select targets under status dropdown
There you can see the endpoints you wanted

----------------------------------------------------------------------------

Execute graf.sh(./graf.sh)
Check the pod name and port forward the pod to 3000
Now execute the command kubectl get pods -o wide
Check the IP of prometheus 
Open Grafana Dashboard in your browser (Username: admin Password: admin)
Add the datasource
Give the url as http://<prometheus_IP>:9090
and save
Now import node exporter dashboard using the ID 1860
There you will be able to see the metics visualization
