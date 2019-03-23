cd /usr/local/applications
curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-amazon-4.0.3.tgz
tar -zxvf mongodb-linux-x86_64-amazon-4.0.3.tgz
mv mongodb-linux-x86_64-amazon-4.0.3 mongodb-4.0.3

export PATH=/usr/local/applications/mongodb-4.0.3/bin:$PATH
 

mkdir -p /usr/local/logs/mongo-data/db

cd /usr/local/applications/mongodb-4.0.3/bin

nohup /usr/local/applications/mongodb-4.0.3/bin/mongod --dbpath=/usr/local/logs/mongo-data/db --bind_ip_all >> /usr/local/logs/mongo.log 2>&1 &



--------set up username and password-------

use admin

db.createUser(
  {
    user: "mongoroot",
    pwd: "derbysoftmongo",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)

If you meet no acceptable C compiler Found in $PATH

curl -O http://ftp.gnu.org/gnu/glibc/glibc-2.18.tar.gz

no acceptable C compiler found in $PATH

vi /etc/yum.conf
remove comment in "releasever=latest" from /etc/yum.conf.

../configure --prefix=/opt/glibc-2.18
make -j4
make install
LD_PRELOAD="/lib64/libc-2.17.so" ln -s /lib64/libc-2.17.so /lib64/libc.so.6

./bin/mongo localhost:27017/dc -u mongodb -p 'mongodbDerbysoft1215' --authenticationDatabase 'admin'

