#!/usr/bin/env python
from confluent_kafka.cimpl import Producer
import time

time.sleep(10)

p = Producer({'bootstrap.servers': 'kafka1,kafka2,kafka3,kafka4'})

data = "yolo"

for i in range(100):
    p.produce('mytopic', data)
    p.flush()
    time.sleep(1)
