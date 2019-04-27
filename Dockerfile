from tensorflow/tensorflow:1.7.0-devel-py3
copy facenet /root/facenet
copy run.sh /root/run.sh
copy load.py /root/load.py
copy model /root/model
entrypoint /root/run.sh
