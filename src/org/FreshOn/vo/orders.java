package org.FreshOn.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class orders {
private int ocode;
private String id;
private int pcode;
private int quanity;
private int totalprice;
private Timestamp odate;
}
