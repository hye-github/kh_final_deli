package kh.deli.domain.member.order.service;


import kh.deli.domain.member.order.dto.OrderHistoryDTO;
import kh.deli.domain.member.order.mapper.OrderHistoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderHistoryService {


        @Autowired
        private OrderHistoryMapper orderHistoryMapper;

        public List<OrderHistoryDTO> selectOrderHistory(int acc_seq){
            return orderHistoryMapper.selectOrderHistory(acc_seq);
        }
}