#include "ClickAndCommentService.h"
#include <chrono>
#include <iomanip>


void ClickAndCommentService::SendClickEvent(const std::string& user_id, const std::string& promo_id) {
    KafkaProducer kafkaProducer("localhost:9092", "promo-click");
    auto now = std::chrono::system_clock::now();
        std::time_t currentTime = std::chrono::system_clock::to_time_t(now);
    
    std::tm* localTime = std::localtime(&currentTime);
    
    std::ostringstream timeStream;
    timeStream << std::put_time(localTime, "%Y-%m-%d %H:%M:%S");
    std::string message = "User " + user_id + " clicked promo " + promo_id + " at " + timeStream.str();
    kafkaProducer.SendMessage(message);
}

void ClickAndCommentService::SendCommentEvent(const std::string& user_id, const std::string& promo_id, const std::string& comment) {
    KafkaProducer kafkaProducer("localhost:9092", "promo-comment");
    auto now = std::chrono::system_clock::now();
    std::time_t currentTime = std::chrono::system_clock::to_time_t(now);

std::tm* localTime = std::localtime(&currentTime);

std::ostringstream timeStream;
timeStream << std::put_time(localTime, "%Y-%m-%d %H:%M:%S");
    std::string message = "User " + user_id + " commented on promo " + promo_id + ": " + comment + " at " + timeStream.str();
    kafkaProducer.SendMessage(message);
}
