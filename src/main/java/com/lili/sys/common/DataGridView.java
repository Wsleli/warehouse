package com.lili.sys.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * json数据实体
 * @Author: Wsleli Wiliams
 * @Date: 2024/5/17 15:17
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DataGridView {

    private Integer code=0;
    private String msg="";
    /**
     * 返回的记录总条数
     */
    private Long count=0L;
    /**
     * 返回的记录
     */
    private Object data;

    public DataGridView(Long count, Object data) {
        this.count = count;
        this.data = data;
    }

    public DataGridView(Object data) {
        this.data = data;
    }
}
