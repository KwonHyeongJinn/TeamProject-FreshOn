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

public class product {
private int pcode;
private String name;
private int number;
private String content;
private String image;
private int category;
}
