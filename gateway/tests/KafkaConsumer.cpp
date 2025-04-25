#include <librdkafka/rdkafkacpp.h>
#include <iostream>

class KafkaConsumer {
public:
    KafkaConsumer(const std::string& broker, const std::string& topic) {
        std::string errstr;

        conf_ = RdKafka::Conf::create(RdKafka::Conf::CONF_GLOBAL);

        conf_->set("metadata.broker.list", broker, errstr);

        consumer_ = RdKafka::Consumer::create(conf_, errstr);

        topic_ = RdKafka::Topic::create(consumer_, topic, nullptr, errstr);
    }

    void consume() {
        RdKafka::Message* message = consumer_->consume(topic_, 0, 1000);

        if (message) {
            std::cout << "Message received: " << static_cast<char*>(message->payload()) << std::endl;
        } else {
            std::cerr << "Error consuming message" << std::endl;
        }
    }

private:
    RdKafka::Consumer* consumer_;
    RdKafka::Topic* topic_;
    RdKafka::Conf* conf_;
};