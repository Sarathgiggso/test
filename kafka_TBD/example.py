#!/usr/bin/env python
import threading, time

from kafka import KafkaAdminClient, KafkaConsumer, KafkaProducer
from kafka.admin import NewTopic
import logging
logging.basicConfig(level=logging.DEBUG)

class Producer(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        self.stop_event = threading.Event()

    def stop(self):
        self.stop_event.set()

    def run(self):
        producer = KafkaProducer(bootstrap_servers='10.4.0.6:30162')

        while not self.stop_event.is_set():
            producer.send('my-topic-4', b"test")
            producer.send('my-topic-4', b"\xc2Hola, mundo!")
            time.sleep(1)

        producer.close()


class Consumer(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        self.stop_event = threading.Event()

    def stop(self):
        self.stop_event.set()

    def run(self):
        consumer = KafkaConsumer(bootstrap_servers='10.4.0.6:30162',
                                 auto_offset_reset='earliest',
                                 consumer_timeout_ms=60000)
        consumer.subscribe(['my-topic-4'])

        while not self.stop_event.is_set():
            for message in consumer:
                print(message)
                if self.stop_event.is_set():
                    break

        consumer.close()


def main():
    # Create 'my-topic' Kafka topic
    try:
        admin = KafkaAdminClient(bootstrap_servers='10.4.0.6:30162')

        topic = NewTopic(name='my-topic-4',
                         num_partitions=1,
                         replication_factor=1)
        admin.create_topics([topic])
    except Exception:
        pass

    tasks = [
        Producer(),
        Consumer()
    ]

    # Start threads of a publisher/producer and a subscriber/consumer to 'my-topic' Kafka topic
    for t in tasks:
        t.start()

    time.sleep(10)

    # Stop threads
    for task in tasks:
        task.stop()

    for task in tasks:
        task.join()


if __name__ == "__main__":
    main()

