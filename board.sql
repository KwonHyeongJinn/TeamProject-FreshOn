CREATE TABLE users(						--회원
	id varchar2(20) PRIMARY KEY,		--아이디
	password varchar2(20) NOT NULL,		--비밀번호
	name varchar2(20) NOT NULL,			--이름
	email varchar2(40) NOT NULL,		--이메일
	address varchar2(100) NOT NULL,		--주소
	phone varchar2(20) NOT NULL,		--전화번호
	udate DATE DEFAULT sysdate		  	--가입일
);

CREATE TABLE product(					--상품
	pcode number(5) PRIMARY KEY,		--상품코드
	name varchar2(100) NOT NULL,		--이름
	price number(7) NOT NULL,			--가격
	content varchar2(1000) NOT NULL,	--설명
	image varchar2(50) NOT NULL,		--사진
	category number(7) NOT NULL			--상품 코드 (추가) 
);
CREATE SEQUENCE pcode_seq;				

CREATE TABLE cart(						--장바구니
	ccode number(5) PRIMARY KEY,		--장바구니코드
	id varchar2(20) NOT NULL,			--아이디(FK)
	pcode number(5) NOT NULL,			--상품코드(FK)
	quantity number(5) NOT NULL,		--수량
	totalPrice number(7) NOT NULL,		--총가격
	FOREIGN KEY (id) REFERENCES users(id),
	FOREIGN KEY (pcode) REFERENCES product(pcode)
);
CREATE SEQUENCE ccode_seq;

CREATE TABLE orders(					--주문
	ocode number(5) PRIMARY KEY,		--주문코드
	id varchar2(20) NOT NULL,			--아이디(FK)
	pcode number(5) NOT NULL,			--상품코드(FK)
	quantity number(5) NOT NULL,		--수량
	totalPrice number(7) NOT NULL,		--총가격
	odate DATE DEFAULT sysdate,			--주문일
	FOREIGN KEY (id) REFERENCES users(id),
	FOREIGN KEY (pcode) REFERENCES product(pcode)
);
CREATE SEQUENCE ocode_seq;

CREATE TABLE review(					--리뷰
	rcode number(5) PRIMARY KEY,		--리뷰코드
	pcode number(5) NOT NULL,			--상품코드(FK)
	ocode number(5) NOT NULL,			--주문코드(FK)
	grade number(5)	NOT NULL,			--평점
	review varchar2(1000) NOT NULL,		--내용
	rdate DATE DEFAULT sysdate,			--작성일
	ip varchar2(200) NOT NULL,			--작성자 ip (추가)
	FOREIGN KEY (pcode) REFERENCES product(pcode),
	FOREIGN KEY (ocode) REFERENCES orders(ocode)
);
CREATE SEQUENCE rcode_seq;



--필요시 테이블 및 데이터 삭제
DROP TABLE users;
DROP TABLE product;
DROP TABLE cart;
DROP TABLE orders;
DROP TABLE review;
TRUNCATE TABLE users;
TRUNCATE TABLE product;
TRUNCATE TABLE cart;
TRUNCATE TABLE orders;
TRUNCATE TABLE review;
DROP SEQUENCE pcode_seq;
DROP SEQUENCE ccode_seq;
DROP SEQUENCE ocode_seq;
DROP SEQUENCE rcode_seq;

