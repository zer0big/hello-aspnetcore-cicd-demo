# set this to the name of your Azure Container Registry.  It must be globally unique
acrName=zerodemoacr

# set this to the name of your Resource Group. 
rgName=zerodemorg

# Run the following line to create an Azure Container Registry if you do not already have one
# az acr create -n $acrName -g $rgName --sku basic

# Create an AKS cluster with ACR integration
az aks create -n zerodemoaks -g $rgName \
    --service-principal <AppID> \
    --client-secret <Password> \
    --node-count 2 \
    --generate-ssh-keys \
    --attach-acr $acrName