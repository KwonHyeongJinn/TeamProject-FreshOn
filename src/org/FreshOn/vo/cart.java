package org.FreshOn.vo;

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

public class cart {
private int ccode; 
private String id;
private int pcode;
private int quantity;
private int totalPrice;
}
