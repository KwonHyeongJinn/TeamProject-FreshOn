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
public class review {
private int rcode;
private int pcode;
private int ocode;
private int grade;
private String review;
private Timestamp rdate;
private String ip;
}
