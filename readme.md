## steps:

for mac with docker desktop and minikube
minikube start --driver=docker

cd backend
eval $(minikube docker-env)
docker build -t fake-api -f Dockerfile .

cd
docker build -t k8s-krakend:0.0.3 .

// 1 way
kubectl create -f deployment-fake-api.yaml
kubectl create -f service-fake-api.yaml

kubectl create -f deployment-krakend.yaml
kubectl create -f service-krakend.yaml

// 2 way
cd ..
helm install bona ./bona-helm
helm uninstall bona ./bona-helm

minikube service krakend-service
minikube service krakend-service --url

## ingress minikube
https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

minikube tunnel

kubectl config set-context --current --namespace=app-namespace

// after image updating:
// 1 update image version in .yaml
// 2 helm repo update



// for local development 
cd krakend-gateway && krakend run -c krakend-local.json
cd backend && npm run start


//for db
// https://www.digitalocean.com/community/tutorials/how-to-deploy-postgres-to-kubernetes-cluster
kubectl exec -it postgres-f678886f6-d8xr2 -- psql -h localhost -U ps_user --password -p 5432 ps_db

\conninfo


### force delete pv/pvc:
kubectl delete pvc --all --grace-period=0 --force 


helm hook migration

https://medium.com/@shubhamdhote9717/keycloak-latest-version-deployment-on-kubernetes-4c73d11bd460

minikube addons enable ingress   

mmko67/bertiea-api:init
docker build -t mmko67/grogu-api:0.0.1 .
docker image push --all-tags mmko67/grogu-api

https://blog.internetz.me/posts/kubernetes-nodejs-postgresql-example/

kubectl port-forward pods/postgres-f678886f6-8ks8r 5432:5432

keycloak db:
 kubectl port-forward --namespace default svc/my-postgresql 5432:5432 &
    PGPASSWORD="$POSTGRES_PASSWORD" psql --host 127.0.0.1 -U postgres -d postgres -p 5432


https://mycloudjourney.medium.com/deploying-keycloak-on-kubernetes-with-minikube-db747f587f50


https://blog.brakmic.com/keycloak-with-postgresql-on-kubernetes/

https://github.com/harsh4870/Keycloack-postgres-kubernetes-deployment/tree/main


https://www.gabrielebartolini.it/articles/2024/02/maximizing-microservice-databases-with-kubernetes-postgres-and-cloudnativepg/


SELECT table_name FROM information_schema.tables WHERE table_schema='public';


https://github.com/rashidmajeed/kubernetes-multicontainer-application-react-nodejs-postgres-nginx/tree/master


https://dev.to/molamk/running-a-node-js-app-with-docker-kubernetes-and-minikube-10d4




redis kuber https://www.dragonflydb.io/guides/redis-kubernetes



https://blog.knoldus.com/how-to-deploy-keycloak-with-postgres-on-gke/


https://www.stakater.com/post/proxy-injector-enabling-sso-with-keycloak-on-kubernetes

# AAAA
https://github.com/abpframework/eShopOnAbp/tree/eab6174c7e72ffa8413d562f93a45295b464bbc7


### import users to keycloka 
https://simonscholz.dev/tutorials/keycloak-realm-export-import


docker run -d -it -p 5173:8080 --name gfront mmko67/grogu-front:0.0.4


https://devpress.csdn.net/cloud/62fcc163c677032930801de3.html


https://blog.wittcode.com/blogs/blocking-open-ports-with-firewalls