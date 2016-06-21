function konsole() {
  APP_DIR=${PWD##*/};
  CONTAINER=$(kubectl get pods --namespace $1 | grep -E -o "^"$APP_DIR"[a-z0-9-]+" | head -n 1)
  DEFAULT_CMD="scripts/console"
  kubectl exec $CONTAINER --namespace $1 -it /bin/sh ./entrypoint.sh $2
}

function klog() {
  APP_DIR=${PWD##*/};
  CONTAINER=$(kubectl get pods --namespace $1 | grep -E -o "^"$APP_DIR"[a-z0-9-]+" | head -n 1)
  kubectl logs $CONTAINER --namespace $1
}

function klist() {
  kubectl get pods --namespace $1
}
