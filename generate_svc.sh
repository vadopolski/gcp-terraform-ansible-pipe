students=(
iavseenko
iakimenko
dvorobyov
ygladkikh
kgrishchenko
yderkachev
adubinsky
adyakov
aermokhin
vzharkov
izykov
oilyin
mkachaev
kalexander
dkoneva
kdenis
akorotkikh
alapenko
alevanov
vlomakov
amakarov
nmezhevova
mdmitry
nnaranov
nevgeny
gosipenkov
kpakhtusov
sperfilyev
pdmitry
araev
pryzhov
asemyonov
dtirskikh
etishchenko
aurzov
yfurman
acheryabkin
ashanin
ashpynov
bektova
eyarov
ayashin
dshubina
dlybin
dsinelnikov
msipatov
asamoilov
dutkina)
id=rt-2021-03-25-16-47-29-sfunu
for student in "${students[@]}"; do
gcloud iam service-accounts create $student \
    --description="$student-Service-Account" \
    --display-name="$student-ServiceAccount"
gcloud projects add-iam-policy-binding $id \
    --member="serviceAccount:$student@$id.iam.gserviceaccount.com" \
    --role="roles/viewer"
gcloud iam service-accounts keys create $HOME/$student-credentials.json \
  --iam-account $student@$id.iam.gserviceaccount.com
gsutil mb -l EUROPE-WEST3 gs://$id-$student
gsutil iam ch serviceAccount:$student@$id.iam.gserviceaccount.com:objectAdmin gs://$id-$student
done
#gcloud auth activate-service-account --project=project-308318 --key-file=/home/root/student3-credentials.json
#test2


Created service account [vaopolskiy].
Updated IAM policy for project [rt-2021-03-25-16-47-29-sfunu].
bindings:
- members:
  - serviceAccount:service-592041690926@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - serviceAccount:service-592041690926@dataproc-accounts.iam.gserviceaccount.com
  role: roles/dataproc.serviceAgent
- members:
  - serviceAccount:592041690926-compute@developer.gserviceaccount.com
  - serviceAccount:592041690926@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - serviceAccount:acg-sg@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com
  - user:r804rwf79mrutlm@gmail.com
  role: roles/owner
- members:
  - serviceAccount:vaopolskiy@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com
  role: roles/viewer
etag: BwW-dhxNN3k=
version: 1
created key [21e8166f8c36d29b4d4c24b8527968884a4e2468] of type [json] as [/home/r804rwf79mrutlm/vaopolskiy-credentials.json] for [vaopolskiy@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com]
Creating gs://rt-2021-03-25-16-47-29-sfunu-vaopolskiy/...


gcloud auth activate-service-account --project=rt-2021-03-25-16-47-29-sfunu --key-file=/home/r804rwf79mrutlm/vaopolskiy-credentials.json







version: 1
created key [21e8166f8c36d29b4d4c24b8527968884a4e2468] of type [json] as [/home/r804rwf79mrutlm/vaopolskiy-credentials.json] for [vaopolskiy@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com]
Creating gs://rt-2021-03-25-16-47-29-sfunu-vaopolskiy/...
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ Created service account [vaopolskiy].
-bash: Created: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ Updated IAM policy for project [rt-2021-03-25-16-47-29-sfunu].
-bash: Updated: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ bindings:
-bash: bindings:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ - members:
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:service-592041690926@compute-system.iam.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   role: roles/compute.serviceAgent
-bash: role:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ - members:
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:service-592041690926@dataproc-accounts.iam.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   role: roles/dataproc.serviceAgent
-bash: role:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ - members:
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:592041690926-compute@developer.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:592041690926@cloudservices.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   role: roles/editor
-bash: role:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ - members:
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:acg-sg@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - user:r804rwf79mrutlm@gmail.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   role: roles/owner
-bash: role:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ - members:
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   - serviceAccount:vaopolskiy@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com
-bash: -: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$   role: roles/viewer
-bash: role:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ etag: BwW-dhxNN3k=
-bash: etag:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ version: 1
-bash: version:: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ created key [21e8166f8c36d29b4d4c24b8527968884a4e2468] of type [json] as [/home/r804rwf79mrutlm/vaopolskiy-credentials.json] for [vaopolskiy@rt-2021-03-25-16-47-29-sfunu.iam.gserviceaccount.com]
-bash: created: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$ Creating gs://rt-2021-03-25-16-47-29-sfunu-vaopolskiy/...
-bash: Creating: command not found
r804rwf79mrutlm@cloudshell:~ (rt-2021-03-25-16-47-29-sfunu)$


/home/r804rwf79mrutlm/vaopolskiy-credentials.json





export REGION=us-central1
export ZONE=us-central1-a
gcloud config set compute/zone ${ZONE}

gcloud services enable dataproc.googleapis.com sqladmin.googleapis.com



export REGION=europe-west3
export ZONE=europe-west3-a
export PROJECT=rt-2021-03-25-16-47-29-sfunu
gcloud config set compute/zone ${ZONE}

gcloud services enable dataproc.googleapis.com sqladmin.googleapis.com


gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "CREATE EXTERNAL TABLE transactions (SubmissionDate DATE, TransactionAmount DOUBLE, TransactionType STRING) STORED AS PARQUET LOCATION 'gs://${PROJECT}-warehouse/datasets/transactions';"




gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "create schema if not exists stg;"


gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "CREATE EXTERNAL TABLE stg.billing (user_id INT, billing_period STRING, service STRING, tariff STRING, sum INT, created_at STRING) STORED AS PARQUET LOCATION 'gs://rt-2021-03-25-16-47-29-sfunu-vaopolskiy/data_lake/stg/billing';"

--execute "CREATE EXTERNAL TABLE stg.billing (user_id INT, timestamp1 BIGINT, device_id STRING, device_ip_addr STRING, bytes_sent INT, bytes_received INT) STORED AS PARQUET LOCATION 'gs://rt-2021-03-25-16-47-29-sfunu-vaopolskiy/data_lake/stg/billing';"


gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "create schema if not exists ods;"

gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "CREATE TABLE ods.billing (user_id INT, billing_period STRING, service STRING, tariff STRING, sum INT, created_at INT);"

--execute "CREATE TABLE ods.billing (user_id INT, timestamp1 BIGINT, device_id STRING, device_ip_addr STRING, bytes_sent INT, bytes_received INT);"


gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "insert overwrite table ods.billing select * from (select * from stg.billing limit 10) t where 1 = 1;"

gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "select * from ods.billing;"


gcloud dataproc jobs submit hive \
--cluster cluster-dataproc \
--region ${REGION} \
--execute "select * from stg.billing limit 10;"