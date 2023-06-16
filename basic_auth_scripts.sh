

$ htpasswd -c auth foo
New password: <bar>
New password:
Re-type new password:
Adding password for user foo


Convert htpasswd into a secret

kubectl create secret generic basic-auth --from-file=auth


get secret basic-auth -o yaml 