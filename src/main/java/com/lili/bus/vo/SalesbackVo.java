package com.lili.bus.vo;

import com.lili.bus.entity.Salesback;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Author: Wsleli Wiliams
 * @Date: 2024/5/17 10:29
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class SalesbackVo extends Salesback {

    private Integer page = 1;

    private Integer limit = 10;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endTime;


}
