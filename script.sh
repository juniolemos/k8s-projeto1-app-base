echo "criando as imagens .........."

docker build -t juniolemos/projeto-backend:1.0 backend/.
docker build -t juniolemos/projeto-database:1.0 database/.

echo " Realizando push das imagens ...."

docker push juniolemos/projeto-backend:1.0
docker push juniolemos/projeto-database:1.0

echo "Criando serviços ...."
kubectl apply -f ./services.yml
echo "Criando deployments..."

kubectl apply -f ./deployment.yml