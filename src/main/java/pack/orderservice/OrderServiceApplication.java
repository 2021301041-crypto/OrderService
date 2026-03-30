package pack.orderservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController     //해당 실습만 컨트롤러 엔트리 포인트에다 생성
public class OrderServiceApplication {

    @GetMapping("/")
    public String hello() {
        System.out.println("OrderService:[아아1아아]");
        return "OrderService[아dkdkd1111kdk]";
    }

    public static void main(String[] args) {
        SpringApplication.run(OrderServiceApplication.class, args);
    }
}
