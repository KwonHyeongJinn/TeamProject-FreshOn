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
public class users {
private String id;
private String password;
private String name;
private String email;
private String address;
private String phone;
private Timestamp udate;
}
